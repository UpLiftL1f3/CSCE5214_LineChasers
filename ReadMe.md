# Predicting Index Futures Price Movement

This project contains both a back-end (Flask) and a front-end (React/Vite/etc.). Follow the instructions below to run the project on your operating system.

## Getting Started

### macOS/Linux

1. **Clone the repository**:
    ```bash
    git clone https://github.com/UpLiftL1f3/CSCE5214_LineChasers.git
    cd CSCE5214_LineChasers.git
    ```
2. **Move the `RFmodel.pkl` file into the `backend` folder**:

    - Make sure the `RFmodel.pkl` file (included in the project zip) is placed in the `backend` folder.

3. **Give execution permissions to the script**:

    ```bash
    chmod +x run-mac.sh
    ```

4. **Run the project**:

    ```bash
    ./run-mac.sh
    ```

    This script will:

    - Create a Python virtual environment (if one doesn’t exist).
    - Install the necessary Python packages (`Flask`, `Flask-CORS`, `pandas`, `numpy`, `scikit-learn`).
    - Start the back-end server (Flask).
    - Install Node.js dependencies and start the front-end server.

---

### Windows

1. **Clone the repository**:
    ```bash
    git clone https://github.com/UpLiftL1f3/CSCE5214_LineChasers.git
    cd CSCE5214_LineChasers.git
    ```
2. **Move the `RFmodel.pkl` file into the `backend` folder**:

    - Make sure the `RFmodel.pkl` file (included in the project zip) is placed in the `backend` folder.

3. **Run the project**:

    - Double-click `run-windows.bat` or run it via Command Prompt:
        ```bash
        run-windows.bat
        ```

    This script will:

    - Create a Python virtual environment (if one doesn’t exist).
    - Install the necessary Python packages (`Flask`, `Flask-CORS`, `pandas`, `numpy`, `scikit-learn`).
    - Start the back-end server (Flask) in a new command window.
    - Install Node.js dependencies and start the front-end server in a new command window.

---

## Notes

-   Ensure you have **Python 3.x**, **Node.js**, and **npm** installed on your system.
-   Make sure ports 5000 (for Flask) and 3000 (for the front-end) are available before running the scripts.
