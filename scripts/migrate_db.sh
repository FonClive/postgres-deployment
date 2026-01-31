#!/bin/bash
set -e

for file in migrations/*.sql; do
  echo "Applying $file"
  psql -U appuser -d appdb -f "$file"
done
