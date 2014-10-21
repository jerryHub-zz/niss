
<%@ page import="mx.nissan.Documento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'documento.label', default: 'Documento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-documento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-documento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="documento" title="${message(code: 'documento.documento.label', default: 'Documento')}" />
					
						<th><g:message code="documento.transportista.label" default="Transportista" /></th>
					
						<th><g:message code="documento.tipoTransporte.label" default="Tipo Transporte" /></th>
					
						<g:sortableColumn property="tractor" title="${message(code: 'documento.tractor.label', default: 'Tractor')}" />
					
						<g:sortableColumn property="placas" title="${message(code: 'documento.placas.label', default: 'Placas')}" />
					
						<g:sortableColumn property="caja1" title="${message(code: 'documento.caja1.label', default: 'Caja1')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${documentoInstanceList}" status="i" var="documentoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${documentoInstance.id}">${fieldValue(bean: documentoInstance, field: "documento")}</g:link></td>
					
						<td>${fieldValue(bean: documentoInstance, field: "transportista")}</td>
					
						<td>${fieldValue(bean: documentoInstance, field: "tipoTransporte")}</td>
					
						<td>${fieldValue(bean: documentoInstance, field: "tractor")}</td>
					
						<td>${fieldValue(bean: documentoInstance, field: "placas")}</td>
					
						<td>${fieldValue(bean: documentoInstance, field: "caja1")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${documentoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
