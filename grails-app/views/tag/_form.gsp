<%@ page import="mx.nissan.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'asignado', 'error')} ">
	<label for="asignado">
		<g:message code="tag.asignado.label" default="Asignado" />
		
	</label>
	<g:checkBox name="asignado" value="${tagInstance?.asignado}" />
</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'numTag', 'error')} ">
	<label for="numTag">
		<g:message code="tag.numTag.label" default="Num Tag" />
		
	</label>
	<g:textField name="numTag" value="${tagInstance?.numTag}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'tipoTransporte', 'error')} required">
	<label for="tipoTransporte">
		<g:message code="tag.tipoTransporte.label" default="Tipo Transporte" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipoTransporte" name="tipoTransporte.id" from="${mx.nissan.TipoTransporte.list()}" optionKey="id" required="" value="${tagInstance?.tipoTransporte?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'transportista', 'error')} required">
	<label for="transportista">
		<g:message code="tag.transportista.label" default="Transportista" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="transportista" name="transportista.id" from="${mx.nissan.Transportista.list()}" optionKey="id" required="" value="${tagInstance?.transportista?.id}" class="many-to-one"/>
</div>

