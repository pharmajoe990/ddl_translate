#!/usr/bin/python

class SQLServerColumn(object):
	"""An SQL Server DB Column"""

	name = ""
	dataType = ""
	length = ""
	precision = ""
	isNullable = False

		#All SQL Server datatypes. Used for error checking mapping translations between DBMSes
	dataTypes = ('numeric', 'varchar', 'char', 'nvarchar', 'money', 'datetime', 'int', 'decimal', 'float', 'uniqueidentifier');

	def __init__(self, name, dataType, length, precision, isNullable):
		self.name = name
		self.length = length
		self.precision = precision
		self.isNullable = isNullable
		setType(dataType)

	def getAttributes(self):
		"""Build dictionary of getAttributes"""
		return dict(name=self.name, dataType=self.dataType, length=str(self.length), precision=str(self.precision), nullable=str(self.isNullable))

	def checkDataType(self, dataType):
		"""Validates Datatypes are allowable"""
		if dataType not in self.datatypes
			#Invalid dataType
			#TODO Implement exception
			print dataType, 'not valid MSSQL type'
		self.type = dataType