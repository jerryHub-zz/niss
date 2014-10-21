<%@ page import="mx.nissan.Documento" %>



<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'documento', 'error')} ">
	<label for="documento">
		<g:message code="documento.documento.label" default="Documento" />
		
	</label>
	<g:textField name="documento" value="${documentoInstance?.documento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'transportista', 'error')} ">
	<label for="transportista">
		<g:message code="documento.transportista.label" default="Transportista" />
		
	</label>
	<g:select id="transportista" name="transportista.id" from="${mx.nissan.Transportista.list()}" optionKey="id" value="${documentoInstance?.transportista?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'tipoTransporte', 'error')} ">
	<label for="tipoTransporte">
		<g:message code="documento.tipoTransporte.label" default="Tipo Transporte" />
		
	</label>
	<g:select id="tipoTransporte" name="tipoTransporte.id" from="${mx.nissan.TipoTransporte.list()}" optionKey="id" value="${documentoInstance?.tipoTransporte?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'tractor', 'error')} ">
	<label for="tractor">
		<g:message code="documento.tractor.label" default="Tractor" />
		
	</label>
	<g:textField name="tractor" value="${documentoInstance?.tractor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'placas', 'error')} ">
	<label for="placas">
		<g:message code="documento.placas.label" default="Placas" />
		
	</label>
	<g:textField name="placas" value="${documentoInstance?.placas}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'caja1', 'error')} ">
	<label for="caja1">
		<g:message code="documento.caja1.label" default="Caja1" />
		
	</label>
	<g:textField name="caja1" value="${documentoInstance?.caja1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'caja2', 'error')} ">
	<label for="caja2">
		<g:message code="documento.caja2.label" default="Caja2" />
		
	</label>
	<g:textField name="caja2" value="${documentoInstance?.caja2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'operador', 'error')} required">
	<label for="operador">
		<g:message code="documento.operador.label" default="Operador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="operador" name="operador.id" from="${mx.nissan.Operador.list()}" optionKey="id" required="" value="${documentoInstance?.operador?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'tag', 'error')} required">
	<label for="tag">
		<g:message code="documento.tag.label" default="Tag" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tag" name="tag.id" from="${mx.nissan.Tag.list()}" optionKey="id" required="" value="${documentoInstance?.tag?.id}" class="many-to-one"/>
</div>

