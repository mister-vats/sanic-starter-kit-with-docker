""" App entry point. """
import os
from sanic import Sanic


def create_app():
    """ Function for bootstrapping sanic app. """

    app = Sanic(__name__)

    # Register Blueprints/Views.
    from app.controllers.users import UserController
    app.add_route(UserController.as_view(), '/api/user')

    app.go_fast(host= "0.0.0.0",debug=True, workers=os.cpu_count())
