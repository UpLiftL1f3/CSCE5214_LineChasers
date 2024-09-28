@echo off

:: Navigate to the backend directory
cd backend
echo Creating virtual environment if it doesn't exist...

:: Check if venv directory exists, if not create it
if not exist venv (
    python -m venv venv
)

:: Activate the virtual environment
call venv\Scripts\activate

:: Install required packages
echo Installing required packages...
pip install --upgrade pip
pip install pandas numpy flask flask-cors scikit-learn

:: Start the Flask server in a new command window
echo Starting backend...
start cmd /k "flask run"

:: Navigate to the frontend directory
cd ..\frontend

:: Install frontend dependencies and start
echo Starting frontend...
npm install
start cmd /k "npm run dev"

pause
