#!/bin/bash

# Navigate to the backend directory
echo "Navigating to backend directory..."
cd backend

# Check if virtual environment exists, if not, create it
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
else
    echo "Virtual environment already exists."
fi

# Activate the virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Install required packages if not already installed
echo "Installing required packages..."
pip install --upgrade pip
pip install pandas numpy flask flask-cors scikit-learn

# Start the Flask server to serve the HTML file
echo "Starting backend..."
FLASK_APP=app.py flask run  # Serve the HTML file via Flask

# No need to start a separate frontend now, Flask will serve your HTML file
