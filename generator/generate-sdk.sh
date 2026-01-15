#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="${SCRIPT_DIR}/.."
DEFAULT_OPENAPI_FILE="${SCRIPT_DIR}/openapi.json"
DEFAULT_PACKAGE_NAME="permify-php"
DEFAULT_INVOKER_PACKAGE="Permify"
DEFAULT_COMPOSER_VENDOR="permify"
DEFAULT_LICENSE="AGPL-3.0"

usage() {
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Generate PHP SDK from OpenAPI specification and update project directory"
    echo ""
    echo "Options:"
    echo "  -i, --input FILE        OpenAPI JSON file (default: ${DEFAULT_OPENAPI_FILE})"
    echo "  -p, --package NAME      Package name (default: ${DEFAULT_PACKAGE_NAME})"
    echo "  -n, --namespace NAME    Invoker package/namespace (default: ${DEFAULT_INVOKER_PACKAGE})"
    echo "  -v, --vendor NAME       Composer vendor name (default: ${DEFAULT_COMPOSER_VENDOR})"
    echo "  -l, --license NAME      Composer license field (default: ${DEFAULT_LICENSE})"
    echo "  -h, --help              Show this help message"
    echo ""
    echo "This script will update the following:"
    echo "  - ../src (generated PHP SDK library)"
    echo "  - ../composer.json (PHP dependencies)"
    echo ""
    echo "Examples:"
    echo "  $0                                    # Use defaults"
    echo "  $0 -i swagger.json                    # Custom input file"
    echo "  $0 -p custom-php -n CustomNamespace   # Custom package and namespace"
}

OPENAPI_FILE="${DEFAULT_OPENAPI_FILE}"
PACKAGE_NAME="${DEFAULT_PACKAGE_NAME}"
INVOKER_PACKAGE="${DEFAULT_INVOKER_PACKAGE}"
COMPOSER_VENDOR="${DEFAULT_COMPOSER_VENDOR}"
COMPOSER_LICENSE="${DEFAULT_LICENSE}"

while [[ $# -gt 0 ]]; do
    case $1 in
        -i|--input)
            OPENAPI_FILE="$2"
            shift 2
            ;;
        -p|--package)
            PACKAGE_NAME="$2"
            shift 2
            ;;
        -n|--namespace)
            INVOKER_PACKAGE="$2"
            shift 2
            ;;
        -v|--vendor)
            COMPOSER_VENDOR="$2"
            shift 2
            ;;
        -l|--license)
            COMPOSER_LICENSE="$2"
            shift 2
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            usage
            exit 1
            ;;
    esac
done

if [[ ! -f "${OPENAPI_FILE}" ]]; then
    echo "Error: OpenAPI file '${OPENAPI_FILE}' not found"
    exit 1
fi

# Check if Java is available
if ! command -v java &> /dev/null; then
    echo "Error: Java is required but not installed"
    exit 1
fi

TEMP_OUTPUT_DIR=$(mktemp -d)
trap 'rm -rf "${TEMP_OUTPUT_DIR}"' EXIT

OPENAPI_ABSOLUTE_PATH=$(realpath "${OPENAPI_FILE}")

OPENAPI_VERSION=$(grep -o '"version": *"[^"]*"' "${OPENAPI_FILE}" | cut -d '"' -f 4)
if [[ -z "${OPENAPI_VERSION}" ]]; then
    echo "Error: Could not extract version from OpenAPI file"
    exit 1
fi

echo "Generating PHP SDK..."
echo "  OpenAPI file: ${OPENAPI_ABSOLUTE_PATH}"
echo "  OpenAPI version: ${OPENAPI_VERSION}"
echo "  Package name: ${PACKAGE_NAME}"
echo "  Namespace: ${INVOKER_PACKAGE}"
echo "  Composer vendor: ${COMPOSER_VENDOR}"
echo "  Composer license: ${COMPOSER_LICENSE}"
echo "  Temp directory: ${TEMP_OUTPUT_DIR}"
echo ""

# Download OpenAPI Generator CLI JAR if not present
GENERATOR_JAR="${SCRIPT_DIR}/openapi-generator-cli.jar"
if [[ ! -f "${GENERATOR_JAR}" ]]; then
    echo "Downloading OpenAPI Generator CLI..."
    curl -L -o "${GENERATOR_JAR}" https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/7.2.0/openapi-generator-cli-7.2.0.jar
fi

# Generate SDK using OpenAPI Generator CLI
java -jar "${GENERATOR_JAR}" generate \
    -i "${OPENAPI_ABSOLUTE_PATH}" \
    -g php \
    -o "${TEMP_OUTPUT_DIR}" \
    --additional-properties=composerPackageName="permify/permify-php" \
    --additional-properties=packageName="${PACKAGE_NAME}" \
    --additional-properties=invokerPackage="${INVOKER_PACKAGE}" \
    --additional-properties=composerVendorName="${COMPOSER_VENDOR}" \
    --additional-properties=composerProjectName="${PACKAGE_NAME}" \
    --additional-properties=artifactVersion="${OPENAPI_VERSION}" \
    --additional-properties=artifactUrl="https://permify.co" \
    --additional-properties=licenseName="${COMPOSER_LICENSE}" \
    --additional-properties=developerOrganization="Ufuk Civan Atbas" \
    --additional-properties=developerOrganizationUrl="https://github.com/ucatbas" \
    --skip-validate-spec

if [[ $? -ne 0 ]]; then
    echo ""
    echo "❌ Failed to generate PHP SDK"
    exit 1
fi

echo "Updating SDK project directory..."

# Copy src directory
SRC_DIR="${PROJECT_ROOT}/lib"
if [[ -d "${TEMP_OUTPUT_DIR}/lib" ]]; then
    echo "  Updating ${SRC_DIR}"
    rm -rf "${SRC_DIR}"
    cp -r "${TEMP_OUTPUT_DIR}/lib" "${SRC_DIR}"
else
    echo "Error: Could not find generated lib directory"
    exit 1
fi

# Copy composer.json and ensure license is set
if [[ -f "${TEMP_OUTPUT_DIR}/composer.json" ]]; then
    echo "  Updating composer.json"
    # Patch composer.json if it does not display license field
    TMP_COMPOSER="${TEMP_OUTPUT_DIR}/composer.json"
    if ! grep -q '"license"' "$TMP_COMPOSER"; then
        # Add license field after the "description" field
        tmpfile=$(mktemp)
        awk -v license="${COMPOSER_LICENSE}" '
        BEGIN { added=0 }
        /"description":/ {
            print
            if (!added) {
                getline
                print
                print "    \"license\": \"" license "\","
                added=1
                next
            }
        }
        { print }
        ' "$TMP_COMPOSER" > "$tmpfile"
        mv "$tmpfile" "$TMP_COMPOSER"
    fi
    cp "$TMP_COMPOSER" "${PROJECT_ROOT}/composer.json"
fi

# Copy other important files
for file in README.md .gitignore phpunit.xml.dist .php-cs-fixer.dist.php; do
    if [[ -f "${TEMP_OUTPUT_DIR}/${file}" ]]; then
        echo "  Updating ${file}"
        cp "${TEMP_OUTPUT_DIR}/${file}" "${PROJECT_ROOT}/"
    fi
done

# Copy test directory if it exists
if [[ -d "${TEMP_OUTPUT_DIR}/test" ]]; then
    echo "  Updating test directory"
    rm -rf "${PROJECT_ROOT}/test"
    cp -r "${TEMP_OUTPUT_DIR}/test" "${PROJECT_ROOT}/"
fi

# Copy docs directory if it exists
if [[ -d "${TEMP_OUTPUT_DIR}/docs" ]]; then
    echo "  Updating docs directory"
    rm -rf "${PROJECT_ROOT}/docs"
    cp -r "${TEMP_OUTPUT_DIR}/docs" "${PROJECT_ROOT}/"
fi

echo ""
echo "✅ PHP SDK generated and updated at: ${PROJECT_ROOT}"