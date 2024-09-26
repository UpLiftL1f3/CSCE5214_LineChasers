# USE 'flask run' as a command in the terminal to run. It will then send data to default of http://127.0.0.1:5000/
from flask import Flask, request, jsonify
from flask_cors import CORS, cross_origin

# Run flask app and set up CORS for browser compatibility
app = Flask(__name__)
CORS(app)

app.url_map.strict_slashes = False

# routes
@app.route("/")
@app.route("/home")
def Home():
    return "Are you getting this?"

if __name__ == "__main__":
    app.run(debug=True)
