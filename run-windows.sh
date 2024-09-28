#!/bin/bash

# Navigate to the backend directory
cd backend || exit
echo "Creating virtual environment if it doesn't exist..."

# Check if venv directory exists, if not create it
if [ ! -d "venv" ]; then
    python3 -m venv venv
fi

# Activate the virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Install required Python packages
echo "Installing required Python packages..."
pip install --upgrade pip
pip install pandas numpy flask flask-cors scikit-learn

# Start the Flask server in the background
echo "Starting Flask backend..."
FLASK_APP=app.py flask run &  # Run Flask in the background

# No frontend needed; Flask will serve the HTML
echo "Flask server is running, serving the HTML from templates directory."

# Keep the shell open
wait
