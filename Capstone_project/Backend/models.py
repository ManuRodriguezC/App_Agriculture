from flask import Flask
from flask_marshmallow import Marshmallow
from flask_sqlalchemy import SQLAlchemy

ma = Marshmallow()
db = SQLAlchemy()

class Seller(db.Model):
    __tablename__ = "sellers"
    
    id = db.Column(db.Integer(), primary_key=True)
    username = db.Column(db.String(128), unique=True)
    firstname = db.Column(db.String(128))
    lastname = db.Column(db.String(182))
    company = db.Column(db.String(128))
    NIT = db.Column(db.String(128), unique=True)
    address = db.Column(db.String(128))
    phonenumber = db.Column(db.String(128))
    email = db.Column(db.String(128), unique=True)
    products = db.Column(db.String(128))
    password = db.Column(db.String(128))
    api_key = db.Column(db.String(128))
    
    def __init__(self, username, firstname, lastname, company, NIT, address, phonenumber, email, products, password, api_key):
        self.username = username
        self.firstname = firstname
        self.lastname = lastname
        self.company = company
        self.NIT = NIT
        self.address = address
        self.phonenumber = phonenumber
        self.email = email
        self.products = products
        self.password = password
        self.api_key = api_key
    
    def __repr__(self):
        return '<id {}>'.format(self.id)

    def serialize(self):
        return {
            'id': self.id,
            'username': self.username,
            'firstname': self.firstname,
            'lastname': self.lastname,
            'company': self.company,
            'NIT': self.NIT,
            'address': self.address,
            'phonenumber': self.phonenumber,
            'email': self.email,
            'products': self.products,
            'password': self.password,
            'api_key': self.api_key
        }

    
class Buyer(db.Model):
    __tablename__ = "buyers"
    
    id = db.Column(db.Integer(), primary_key=True)
    username = db.Column(db.String(128), unique=True)
    firstname = db.Column(db.String(128))
    lastname = db.Column(db.String(182))
    company = db.Column(db.String(128))
    NIT = db.Column(db.String(128), unique=True)
    address = db.Column(db.String(128))
    phonenumber = db.Column(db.String(128))
    email = db.Column(db.String(128), unique=True)
    password = db.Column(db.String(128))
    api_key = db.Column(db.String(128))
    
    def __init__(self, username, firstname, lastname, company, NIT, address, phonenumber, email, password, api_key):
        self.username = username
        self.firstname = firstname
        self.lastname = lastname
        self.company = company
        self.NIT = NIT
        self.address = address
        self.phonenumber = phonenumber
        self.email = email
        self.password = password
        self.api_key = api_key
    
    def __repr__(self):
        return '<id {}>'.format(self.id)

    def serialize(self):
        return {
            'id': self.id,
            'username': self.username,
            'firstname': self.firstname,
            'lastname': self.lastname,
            'company': self.company,
            'NIT': self.NIT,
            'address': self.address,
            'phonenumber': self.phonenumber,
            'email': self.email,
            'password': self.password,
            'api_key': self.api_key
        }