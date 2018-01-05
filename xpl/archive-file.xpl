<?xml version="1.0" encoding="UTF-8"?>
<!-- Convert a document to serialized XML -->
<p:pipeline 
	xmlns:p="http://www.orbeon.com/oxf/pipeline" 
	xmlns:oxf="http://www.orbeon.com/oxf/processors" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<p:param name="file-url" type="input"/>
	<p:param name="data" type="output"/>
	
	<p:processor name="oxf:url-generator">
		<!-- <p:input name="config" href="#file" /> -->
		<p:input name="config">
			<config>
				<url href="#file-url"/>
				<content-type>image/jpeg</content-type>
			</config>
		</p:input>
		<p:output name="data" ref="data" />
	</p:processor>
	<!-- Write the document to a file -->
	<!-- <p:processor name="oxf:file-serializer">
	  <p:input name="config">
        <config>
            <file>/vagrant/numishare/uploads/my-copied-image.jpg</file>
        </config>
    </p:input>
    <p:input name="data" href="#image-data"/>
	</p:processor>
	<p:processor name="oxf:xml-converter">
		<p:input name="config">
			<config>
				<encoding>utf-8</encoding>
			</config>
		</p:input>
		<p:input name="data" href="#dump"/>
		<p:output name="data" ref="data"/>
	</p:processor> -->
</p:pipeline>