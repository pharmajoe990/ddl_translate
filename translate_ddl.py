#!/usr/bin/python

from SQLServer import *

import xml.etree.cElementTree as ET
	
SQLServerTables = list()

source = SQLServer();

splitTables = source.parseFile('Master_Current_CM.sql')

print "Read", len(splitTables), "Tables from DDL"
	
for table in splitTables:
	print "Parsing table"
	SQLServerTables.append(source.parseTable(table))


# Below for testing only
for table in SQLServerTables:
	tabXML = table.genXML()
	

# 	for column in table.columns:
# 		print column.name, column.dataType, column.length, column.precision, column.isNullable