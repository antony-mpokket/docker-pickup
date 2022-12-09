from app import app
from flask import render_template


@app.route('/')
def home():
    return "hello world!"


@app.route('/template')
def template():
    return render_template('home.html')


@app.route('/name/<name>')
def print_name(name=None):
    return f'Hello {name}'


@app.route('/test')
def print_name():
    return f'Hello Test'