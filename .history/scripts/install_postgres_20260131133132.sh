#!/bin/bash
set -e

sudo apt update
sudo apt install -y postgresql postgresql-contrib

sudo systemctl enable postgresql
sudo systemctl start postgresql
