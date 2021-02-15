from ..exceptions import ValidationError
from flask import request, jsonify, render_template
from ..api import api

def no_content(message):
    response = jsonify({'error': 'no content', 'message': message})
    response.status_code = 204
    return response

def bad_request(message):
    response = jsonify({'error': 'badrequest', 'message': message})
    response.status_code = 400
    return response

def unauthorized(message):
    response = jsonify({'error': 'unauthorized', 'message': message})
    response.status_code = 401
    return response

def forbidden(message):
    response = jsonify({'error': 'forbidden', 'message': message})
    response.status_code = 403
    return response

@api.errorhandler(ValidationError)
def validation_error(e):
    return bad_request(e.args[0])
