import os
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')  # Renders the index.html template

@app.route('/error')
def error():
    print("Server is quitting...")
    os._exit(0)  # Exit the server process

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=81)