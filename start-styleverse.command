#!/bin/bash
cd "$(dirname "$0")"
if ! command -v node >/dev/null 2>&1; then
  echo "Node.js is not installed. Opening the download page - install the LTS version, then run this again."
  open https://nodejs.org/ ; read -p "Press Enter to close"; exit 1
fi
(sleep 1.5; open http://127.0.0.1:4173/) &
node server.mjs
