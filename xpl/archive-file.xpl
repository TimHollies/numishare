<?xml version="1.0" encoding="UTF-8"?>
<!-- Convert a document to serialized XML -->wadwadwad w3
ahdwipajdowjdo[aw08ud98


<p:pipeline 
	xmlns:p="http://www.orbeon.com/oxf/pipeline" 
	xmlns:oxf="http://www.orbeon.com/oxf/processors" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<p:param name="dump" type="input" debug="af-dump-in"/>
	<p:param name="file" type="input" debug="af-file-in"/>
	<p:param name="serialize-config" type="input" debug="af-sc-in"/>
	<p:param name="data" type="output" debug="af-data-out"/>
	<p:processor name="oxf:url-generator">
		<p:input name="config" href="#file" debug="ug-data-in"/>
		<p:output name="data" id="new-file" debug="ug-data-out"/>
	</p:processor>
	<!-- Write the document to a file -->
	<p:processor name="oxf:file-serializer">
		<p:input name="config" href="#serialize-config" debug="af-sc-in"/>
		<p:input name="data" href="#new-file" debug="af-data-in"/>
	</p:processor>
	<!-- <p:processor name="oxf:xml-converter"><p:input name="config"><config><encoding>utf-8</encoding></config></p:input><p:input name="data" href="#dump"/><p:output name="data" ref="data"/></p:processor> -->
</p:pipeline>