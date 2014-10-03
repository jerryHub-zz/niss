
<%@ page import="mx.nissan.Tag" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tag" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tag" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tag">
			
				<g:if test="${tagInstance?.asignado}">
				<li class="fieldcontain">
					<span id="asignado-label" class="property-label"><g:message code="tag.asignado.label" default="Asignado" /></span>
					
						<span class="property-value" aria-labelledby="asignado-label"><g:formatBoolean boolean="${tagInstance?.asignado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tagInstance?.numTag}">
				<li class="fieldcontain">
					<span id="numTag-label" class="property-label"><g:message code="tag.numTag.label" default="Num Tag" /></span>
					
						<span class="property-value" aria-labelledby="numTag-label"><g:fieldValue bean="${tagInstance}" field="numTag"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tagInstance?.tipoTransporte}">
				<li class="fieldcontain">
					<span id="tipoTransporte-label" class="property-label"><g:message code="tag.tipoTransporte.label" default="Tipo Transporte" /></span>
					
						<span class="property-value" aria-labelledby="tipoTransporte-label"><g:link controller="tipoTransporte" action="show" id="${tagInstance?.tipoTransporte?.id}">${tagInstance?.tipoTransporte?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${tagInstance?.transportista}">
				<li class="fieldcontain">
					<span id="transportista-label" class="property-label"><g:message code="tag.transportista.label" default="Transportista" /></span>
					
						<span class="property-value" aria-labelledby="transportista-label"><g:link controller="transportista" action="show" id="${tagInstance?.transportista?.id}">${tagInstance?.transportista?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tagInstance?.id}" />
					<g:link class="edit" action="edit" id="${tagInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
