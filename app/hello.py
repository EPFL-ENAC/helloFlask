"""
Hello World flask by Samuel Bancal

inspired from https://flask.palletsprojects.com/en/2.1.x/quickstart/
"""

from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"
