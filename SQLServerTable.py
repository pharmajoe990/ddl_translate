#!/usr/bin/python

from SQLServerColumn import *

import xml.etree.cElementTree as ET

class SQLServerTable(object):
	'Represent an SQL Server Table'

	name = ""
	schema = ""
	columns = list()
	
	def __init__(self, name, schema, columns):
		self.name = name
		self.schema = schema
		self.columns = columns
		# self.columns = columns
	
	def genXML(self):
		#Generate XML representing the table in 
		tableName = dict(name=self.name)
		tableXML = ET.Element('table', tableName)
		for column in self.columns:
			#Get XML for all columns
			colXML = ET.SubElement(tableXML, 'column', column.getAttributes())
			

		# ET.dump(tableXML)

		return tableXML