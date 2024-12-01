#!/bin/bash

# Create virtual environment if it doesn't exist
if [ ! -d "coins_env" ]; then
    echo "Creating virtual environment..."
    python3 -m venv coins_env
else
    echo "Virtual environment already exists"
fi

# Activate virtual environment
source coins_env/bin/activate

# Install requirements
if [ -f "requirements.txt" ]; then
    echo "Installing requirements..."
    pip install -r requirements.txt
else
    echo "Error: requirements.txt not found"
    exit 1
fi

echo "Setup complete! Activate the virtual environment with: source coins_env/bin/activate" 