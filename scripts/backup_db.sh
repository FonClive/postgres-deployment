#!/bin/bash
set -e

BACKUP_DIR="$HOME/pg_backups"
DATE=$(date +%F_%H-%M)

mkdir -p $BACKUP_DIR

pg_dump -U appuser appdb > $BACKUP_DIR/appdb_$DATE.sql
