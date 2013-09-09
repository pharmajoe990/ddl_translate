#!/usr/bin/python

from SQLServerColumn import *

class SQLServerTable(object):
	'Represent an SQL Server Table'

	name = ""
	schema = ""
	columns = list();
	
	def __init__(self, name, schema, columns):
		self.name = name
		self.schema = schema
		self.columns = columns
		# self.columns = columns
