#!/usr/bin/python

# SQL Server functionality

import re
import pdb

from SQLServerColumn import *
from SQLServerTable import *

class SQLServer(object):
	"""SQLServer functionality"""

	#All SQL Server datatypes. Used for error checking mapping translations between DBMSes
	dataTypes = ('numeric', 'varchar', 'char', 'nvarchar', 'money', 'datetime', 'int', 'decimal', 'float', 'uniqueidentifier');

	tables = list()

	def __init__(self, fileName):
		"""Create an SQLServer parsed from DDL file.
		1. Parse the input file into tables
		2. 
		"""
		tables = self.parseFile(fileName)
		print "Read", len(self.tables), "Tables from DDL"


	

	#Parse SQL Server DDL file into distinct objects
	def parseFile(self, fileName ):
		# Read the file
		inputfile = open(fileName, 'r')
		print "Parsing", inputfile.name

		# tables = list()
		extractLine = False
		tableText = ""

		for line in inputfile:		
			if re.match(("CREATE TABLE"), line):
				#Table def started
				extractLine = True

			if extractLine:
				tableText += line			

			if re.match(("\) ON \[PRIMARY\]"), line):
				#Table def finished - grab last line and dump to list			
				extractLine = False
				self.tables.append(tableText)			
				tableText = ""

		return self.tables;

	# Parse a specific single table DDL into Standard XML
	def parseTable(self, tableDDL ):

		tableSchema = ""
		tableName = ""
		tableCols = list()

		lines = tableDDL.splitlines()
		for line in lines:
			#Get table name eg. "CREATE TABLE [dbo].[Master_Current_CM_2]"
			# if re.match(("CREATE TABLE"), line):	
			if 'CREATE TABLE' in line:
				tableName = re.findall((r'\[\w+\]'), line)			
				tableSchema = tableName[0].strip('[]')
				tableName = tableName[1].strip('[]')
				# print 'Table schema: ', tableDetails
				# print 'Table name: ', tableDetails[1]
				# tableSchema = 
				# tableName = re.match()
			elif 'NULL,' in line:
				#Standard column def
				colDetails = re.findall((r'\[[\w\s]+\]'), line)
				colName = colDetails[0].strip('[]')
				dataType = colDetails[1].strip('[]')			
				# print 'Column name', colName
				# print 'data type', dataType
				colLen = re.search((r'\([\d\,\s\d]+\)'), line)
				if colLen:
					# print 'Length', colLen.group()
					lengthPrec = colLen.group().strip('()').split(',')
					length = lengthPrec[0]
					if len(lengthPrec) == 2:
						precision = lengthPrec[1]
					else:
						precision = 0
				#Check if nullable or not
				if 'NOT NULL' in line:
					isNullable = False
				else:
					isNullable = True
				tableCols.append(SQLServerColumn(colName, dataType, length, precision, isNullable))
			elif 'PRIMARY KEY' in line:
				#TODO
				#Parse Constraint
				constDtls = re.findall((r'\[[\w\s]+\]|PRIMARY\sKEY|NONCLUSTERED'), line)

		return SQLServerTable(tableName, tableSchema, tableCols);