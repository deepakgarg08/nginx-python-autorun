from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')  # Renders the index.html template

@app.route('/error')
def error():
    # Simulate an error by raising an exception
    raise Exception("An intentional error occurred.")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=81)