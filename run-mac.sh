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

# Start the Flask server
echo "Starting backend..."
FLASK_APP=app.py flask run &  # Run Flask in the background

# Navigate to the frontend directory
echo "Navigating to frontend directory..."
cd ../frontend

# Start the frontend (assuming you use npm or yarn)
echo "Starting frontend..."
npm install  # Ensure dependencies are installed
npm run dev  # Run frontend

# Wait for both processes to finish
wait
