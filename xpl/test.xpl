<?xml version="1.0" encoding="UTF-8"?>
<!-- Convert a document to serialized XML -->
<p:pipeline 
	xmlns:p="http://www.orbeon.com/oxf/pipeline" 
	xmlns:oxf="http://www.orbeon.com/oxf/processors" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<p:param name="testdata" type="input" debug="af-dump-in"/>
	<p:param name="data" type="output" debug="af-data-out"/>
	<p:processor name="oxf:xml-converter">
		<p:input name="config">
			<config>
				<encoding>utf-8</encoding>
			</config>
		</p:input>
		<p:input name="data" href="#testdata"/>
		<p:output name="data" id="converted"/>
	</p:processor>
	<!--Write the document to a file -->
	<p:processor name="oxf:file-serializer">
		<p:input name="config">
			<config>
				<url>oxf:/apps/numishare/single-file-doc.html</url>
				<make-directories>true</make-directories>
				<append>false</append>
			</config>
		</p:input>
		<p:input name="data" href="#converted"/>
	</p:processor>
</p:pipeline>