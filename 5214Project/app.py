from flask import Flask, request, render_template, jsonify
import joblib
import pandas as pd

app = Flask(__name__)

# Load the pre-trained model (update the path to your model file)
model = joblib.load(r'C:\Users\Dhruvil\Desktop\5214Project\random_forest_model.pkl')  # Replace with the correct model path


# Route for rendering the form in the frontend
@app.route('/')
def index():
    return render_template('index.html')


# Route to handle API call for prediction
@app.route('/predict', methods=['POST'])
def predict():
    try:
        # Get data from the POST request
        data = request.json

        # Create a DataFrame from the received data
        df = pd.DataFrame(data)

        # Make the prediction using the loaded model
        prediction = model.predict(df)

        # Return the prediction result
        return jsonify({'prediction': int(prediction[0])})

    except Exception as e:
        return jsonify({'error': str(e)})


if __name__ == '__main__':
    app.run(debug=True)
