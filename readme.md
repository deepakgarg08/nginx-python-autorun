# Nginx-Python-Gunicorn

This project is minimal python project, which is running flask server with gunicorn which automatically runs the server in the background and restarts it when it crashes. Nginx is used as a reverse proxy.

## Installation

- Install Python and pip.

- Install required packages using the following command:

  ```sh
  pip install -r requirements.txt


## Usage
- Configure Gunicorn settings in the gunicorn_config.py file.

- Update the port number in the app.py file and in the following command:
`gunicorn app:app -c gunicorn_config.py`
Use the `&` in the end of the above command to run the code in the background.

Notes: Here, app:app refers to the Flask app instance (app) in the app.py file. The -c gunicorn_config.py flag specifies the Gunicorn configuration file.