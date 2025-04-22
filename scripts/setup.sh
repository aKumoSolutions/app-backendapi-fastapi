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

read -p "Enter your database endpoint: " endpoint
read -p "Enter your database name: " dbname
read -p "Enter your DB User: " user
read -p "Enter your DB Password: " passwd

export SECRET_KEY="ee23a410114da24d375f607844caccb0ef527581471eaaf54326506e4d250842"
export ALGORITHM="HS256"
export ACCESS_TOKEN_EXPIRE_MINUTES="60"
export DATABASE_URL="postgresql://$user:$passwd@$endpoint:5432/$dbname"

echo "✅ Python environment is ready. Activate by executing: "
echo "source venv/bin/activate"