#!/usr/bin/python

from Column import Column

class DB2Column(Column):
	"""DB2 9.7.3 Column"""

	dataType = ""

	# Allowable Datatypes for DB2 9.7.3
	dataTypes = ('numeric', 'varchar', 'char', 'timestamp', 'int', 'decimal', 'float');

	def __init__(self, name, dataType, length, precision, isNullable):
		super(DB2Column, self).__init__(name, length, precision, isNullable)
		self.setDataType(dataType)

	def setDataType(self, dataType):
		"""Validates Datatypes are allowable"""
		if dataType not in self.dataTypes:
			#Invalid dataType
			#TODO Implement exception
			print dataType, 'not valid MSSQL type'
		self.type = dataType