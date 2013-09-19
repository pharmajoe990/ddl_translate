#!/usr/bin/python

from SQLServer import *

import xml.etree.cElementTree as ET

class Translator(object):

	"""Handle translation of Database XML between DBMS flavours.

	Arguments to Constructor are:
		1. Source DBMS type
		2. Target DBMS type

	Incorrect types specified will result in a failure
	"""

	DBMSTypes = ('SQLServer', 'DB2');

	def __init__(self, source, target, sourceFile):
		if source not in self.DBMSTypes:
			print source, ' Not a known DBMS, known are:'
			self.printTypes()
			exit()
		if target not in self.DBMSTypes:
			print target, ' Not a known DBMS'
			self.printTypes()
			exit()

		

		# Switch on the source type
		# if source == 'SQLServer':
		# 	sourceDB = SQLServer(sourceFile);						
		# 	print "Parsing table"
		# 	for table in sourceDB.tables:
		# 		ET.dump(sourceDB.parseTable(table).genXML())
				# Translate to target DBMS
				

	def printTypes(self):		
		for type in self.DBMSTypes:
			print type

		
		
