@echo off

:: Navigate to the backend directory
cd backend
echo Creating virtual environment if it doesn't exist...

:: Check if venv directory exists, if not create it
if not exist venv (
    python -m venv venv
)

:: Activate the virtual environment
echo Activating virtual environment...
call venv\Scripts\activate

:: Install required packages
echo Installing required Python packages...
pip install --upgrade pip
pip install pandas numpy flask flask-cors scikit-learn

:: Start the Flask server in the background
echo Starting Flask backend...
start "" /b flask run

:: Navigate to the frontend directory
cd ..\frontend

:: Install frontend dependencies
echo Installing frontend dependencies...
npm install

:: Start the frontend server in the background
echo Starting frontend...
npm run dev

pause
