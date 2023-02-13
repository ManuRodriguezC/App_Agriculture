from flask import Flask, Blueprint
from flask_restful import Api
from resources.register_seller import RegisterSeller
from resources.register_buyer import RegisterBuyer

api_app = Blueprint('api', __name__)
api = Api(api_app)

api.add_resource(RegisterSeller, '/registerseller')

api.add_resource(RegisterBuyer, '/registerbuyer')
