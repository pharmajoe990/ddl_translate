#!/usr/bin/python

from Column import Column

class SQLServerColumn(Column):
	"""An SQL Server DB Column"""

	dataType = ""

	#All SQL Server datatypes. Used for error checking mapping translations between DBMSes
	dataTypes = ('numeric', 'varchar', 'char', 'nvarchar', 'money', 'datetime', 'int', 'decimal', 'float', 'uniqueidentifier');

	def __init__(self, name, dataType, length, precision, isNullable):
		super(SQLServerColumn, self).__init__(name, length, precision, isNullable)
		self.setDataType(dataType)

	def setDataType(self, dataType):
		"""Validates Datatypes are allowable"""
		if dataType not in self.dataTypes:
			#Invalid dataType
			#TODO Implement exception
			print dataType, 'not valid MSSQL type'
		self.type = dataType