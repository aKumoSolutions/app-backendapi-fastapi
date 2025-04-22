#!/bin/bash

set -e

sudo dnf update -y
sudo dnf install -y python3.11 python3.11-pip

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
  python3.11 -m venv venv
fi

# Activate the virtual environment
source venv/bin/activate

# Upgrade pip and install requirements
pip install --upgrade pip
pip install -r requirements.txt

echo "✅ Python environment is ready. Activate with: source venv/bin/activate"

