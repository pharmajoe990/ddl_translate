#!/usr/bin/python

class SQLServerColumn(object):
	'An SQL Server DB Column'

	name = ""
	dataType = ""
	length = ""
	precision = ""
	isNullable = False

	def __init__(self, name, dataType, length, precision, isNullable):
		self.name = name
		self.dataType = dataType
		self.length = length
		self.precision = precision
		self.isNullable = isNullable
