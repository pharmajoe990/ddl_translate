#!/usr/bin/python

class Column(object):
	
	"""Generic Database Table Column

	Contains general funcitonality and logic for a Database
	Column. Specific DBMS implementation expected to be
	provided by subclasses of class Column.
	"""

	name = ""
	length = ""
	precision = ""
	isNullable = False

	def __init__(self, name, length, precision, isNullable):
		self.name = name
		self.length = length
		self.precision = precision
		self.isNullable = isNullable

	def getAttributes(self):
		"""Build dictionary of getAttributes"""
		return dict(name=self.name, dataType=self.dataType, length=str(self.length), precision=str(self.precision), nullable=str(self.isNullable))
