from flask import Flask
import pysolr


def create_app():
  # Create app 
  app = Flask(__name__)
  # Create blueprint with routing functions
  from .routes import routes as routes_blueprint 
  app.register_blueprint(routes_blueprint)

  return app
