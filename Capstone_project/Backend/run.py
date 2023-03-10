from flask import Flask
from app import api_app
from models import db
from flask_cors import CORS


def create_app(config_filename):
    app = Flask(__name__)
    app.config.from_object(config_filename)
    CORS(app)
    app.register_blueprint(api_app, url_prefix='/api')
    
    db.init_app(app)
    
    return app

if __name__ == "__main__":
    app = create_app("config")
    app.run(debug=True)