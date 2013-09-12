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

	def getAttributes(self):
		#Build dictionary of getAttributes
		return dict(name=self.name, dataType=self.dataType, length=str(self.length), precision=str(self.precision), nullable=str(self.isNullable))

	