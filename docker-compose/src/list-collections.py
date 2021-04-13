#!/usr/bin/env python

# see https://www.mongodb.com/blog/post/getting-started-with-python-and-mongodb

from pymongo import MongoClient

from os import environ


# pprint library is used to make the output look more pretty
from pprint import pprint

# connect to MongoDB, change the << MONGODB URL >> to reflect your own connection string
client = MongoClient(f"mongodb://{environ['MONGO_HOST']}")
db=client.eventPlotter

events = db.event.count()

pprint(events)

res = db.event.insert_one({'name':'EndOfDay', 'desc':'Close of Business',})

print(f"inserted {res.inserted_id}")

events = db.event.count()

pprint(events)
