from flask_restful import Resource
from flask import request
from models import db, Seller
import random
import string

class RegisterSeller(Resource):
    
    def get(self):
        sellers = Seller.query.all()
        seller_list = []
        for user in range(0, len(sellers)):
            seller_list.append(sellers[user].serialize())
        return {"status": str(seller_list)}, 200
    
    def post(self):
        json_data = request.get_json(force=True)
        
        if not json_data:
            return {"message": "No input data provided"}, 400
        
        seller = Seller.query.filter_by(username=json_data['username']).first()
        if seller:
            return {"message": "This username is already registered"}, 400 
        
        seller = Seller.query.filter_by(email=json_data['email']).first()
        if seller:
            return {"message": "This emailadress is already registered"}, 400
        
        api_key = self.generate_key()
        
        seller = Seller.query.filter_by(api_key=api_key).first()
        if seller:
            return {"message": "API key already exists"}, 400
        
        seller = Seller(
            api_key = api_key,
            username = json_data["username"],
            firstname = json_data["firstname"],
            lastname = json_data["lastname"],
            company = json_data["company"],
            NIT =json_data["NIT"],
            address = json_data["address"],
            phonenumber = json_data["phonenumber"],
            email = json_data["email"],
            products = json_data["products"],
            password = json_data["password"]
        )
        
        db.session.add(seller)
        db.session.commit()
        
        result = Seller.serialize(seller)
        return {"status": "success", "data": result}, 201
    
    def generate_key(self):
        return ''.join(random.choice(string.ascii_letters + string.digits) for _ in range(50))