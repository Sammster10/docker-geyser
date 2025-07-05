#!/usr/bin/env sh

CONFIG_DIR=/app
JAR_LOCATION=${CONFIG_DIR}/Geyser.jar
CACHED_URL_FILE=${CONFIG_DIR}/previous-geyser-url.txt

echo "Checking for Geyser version and build..."

if [ -z "${GEYSER_VERSION}" ] || [ -z "${GEYSER_BUILD}" ]; then
  echo "ERROR: GEYSER_VERSION and GEYSER_BUILD must be set."
  exit 1
fi

GEYSER_URL="https://download.geysermc.org/v2/projects/geyser/versions/${GEYSER_VERSION}/builds/${GEYSER_BUILD}/downloads/standalone"
PREVIOUS_URL=$(cat ${CACHED_URL_FILE} 2>/dev/null || echo "")

if [ "${GEYSER_URL}" = "${PREVIOUS_URL}" ] && [ -f "${JAR_LOCATION}" ]; then
  echo "Geyser URL has not changed, skipping download..."
  exit 0
else
  echo "Geyser URL has changed, downloading new version from '${GEYSER_URL}...'"
  echo "${GEYSER_URL}" > ${CACHED_URL_FILE}
  mkdir -p ${CONFIG_DIR}
  rm -f ${JAR_LOCATION}
  wget -q -O "${JAR_LOCATION}" "${GEYSER_URL}"
  echo "Downloaded Geyser to ${JAR_LOCATION}"
fi