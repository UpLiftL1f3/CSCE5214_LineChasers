#!/bin/bash

# Navigate to the backend directory
cd backend || exit
echo "Creating virtual environment if it doesn't exist..."

# Check if venv directory exists, if not create it
if [ ! -d "venv" ]; then
    python -m venv venv
fi

# Activate the virtual environment
echo "Activating virtual environment..."
source venv/Scripts/activate

# Install required Python packages
echo "Installing required Python packages..."
pip install --upgrade pip
pip install pandas numpy flask flask-cors scikit-learn

# Start the Flask server in the background
echo "Starting Flask backend..."
(flask run &)  # Flask will run in the background

# Navigate to the frontend directory
cd ../frontend || exit

# Install frontend dependencies
echo "Installing frontend dependencies..."
npm install

# Start the frontend server
echo "Starting frontend..."
npm run dev
