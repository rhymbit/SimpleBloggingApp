# A blueprint is similar to an application(app) in that is can also define
# routes and error handlers.  These handlers are in a dormant state until the
# blueprint is registered with an application, at which point they become part
# of that application.
from flask import Blueprint

main = Blueprint('main', __name__)

from . import views, errors
from ..models import Permission

@main.app_context_processor
def inject_permission():
    return dict(Permission=Permission)