
<%@ page import="mx.nissan.Documento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'documento.label', default: 'Documento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-documento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-documento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list documento">
			
				<g:if test="${documentoInstance?.documento}">
				<li class="fieldcontain">
					<span id="documento-label" class="property-label"><g:message code="documento.documento.label" default="Documento" /></span>
					
						<span class="property-value" aria-labelledby="documento-label"><g:fieldValue bean="${documentoInstance}" field="documento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentoInstance?.transportista}">
				<li class="fieldcontain">
					<span id="transportista-label" class="property-label"><g:message code="documento.transportista.label" default="Transportista" /></span>
					
						<span class="property-value" aria-labelledby="transportista-label"><g:link controller="transportista" action="show" id="${documentoInstance?.transportista?.id}">${documentoInstance?.transportista?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentoInstance?.tipoTransporte}">
				<li class="fieldcontain">
					<span id="tipoTransporte-label" class="property-label"><g:message code="documento.tipoTransporte.label" default="Tipo Transporte" /></span>
					
						<span class="property-value" aria-labelledby="tipoTransporte-label"><g:link controller="tipoTransporte" action="show" id="${documentoInstance?.tipoTransporte?.id}">${documentoInstance?.tipoTransporte?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentoInstance?.tractor}">
				<li class="fieldcontain">
					<span id="tractor-label" class="property-label"><g:message code="documento.tractor.label" default="Tractor" /></span>
					
						<span class="property-value" aria-labelledby="tractor-label"><g:fieldValue bean="${documentoInstance}" field="tractor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentoInstance?.placas}">
				<li class="fieldcontain">
					<span id="placas-label" class="property-label"><g:message code="documento.placas.label" default="Placas" /></span>
					
						<span class="property-value" aria-labelledby="placas-label"><g:fieldValue bean="${documentoInstance}" field="placas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentoInstance?.caja1}">
				<li class="fieldcontain">
					<span id="caja1-label" class="property-label"><g:message code="documento.caja1.label" default="Caja1" /></span>
					
						<span class="property-value" aria-labelledby="caja1-label"><g:fieldValue bean="${documentoInstance}" field="caja1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentoInstance?.caja2}">
				<li class="fieldcontain">
					<span id="caja2-label" class="property-label"><g:message code="documento.caja2.label" default="Caja2" /></span>
					
						<span class="property-value" aria-labelledby="caja2-label"><g:fieldValue bean="${documentoInstance}" field="caja2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentoInstance?.operador}">
				<li class="fieldcontain">
					<span id="operador-label" class="property-label"><g:message code="documento.operador.label" default="Operador" /></span>
					
						<span class="property-value" aria-labelledby="operador-label"><g:link controller="operador" action="show" id="${documentoInstance?.operador?.id}">${documentoInstance?.operador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentoInstance?.tag}">
				<li class="fieldcontain">
					<span id="tag-label" class="property-label"><g:message code="documento.tag.label" default="Tag" /></span>
					
						<span class="property-value" aria-labelledby="tag-label"><g:link controller="tag" action="show" id="${documentoInstance?.tag?.id}">${documentoInstance?.tag?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${documentoInstance?.id}" />
					<g:link class="edit" action="edit" id="${documentoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
