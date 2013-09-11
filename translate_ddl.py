#!/usr/bin/python

from SQLServer import *

SQLServerTables = list()

splitTables = parseFile('Master_Current_CM.sql')

print "Read", len(splitTables), "Tables from DDL"
	
for table in splitTables:
	print "Parsing table"
	SQLServerTables.append(parseTable(table))


# Below for testing only
for table in SQLServerTables:
	table.genXML()
	

# 	for column in table.columns:
# 		print column.name, column.dataType, column.length, column.precision, column.isNullable