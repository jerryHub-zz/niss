<!DOCTYPE html>
<html xmlns:g="http://www.w3.org/1999/html">
  <head>
    <title>Planta Nissan</title>
    <meta name="layout" content="main">
    <style type="text/css" media="screen">
      #status {
      background-color: #eee;
      border: .2em solid #fff;
      margin: 2em 2em 1em;
      padding: 1em;
      width: 12em;
      float: left;
      -moz-box-shadow: 0px 0px 1.25em #ccc;
      -webkit-box-shadow: 0px 0px 1.25em #ccc;
      box-shadow: 0px 0px 1.25em #ccc;
      -moz-border-radius: 0.6em;
      -webkit-border-radius: 0.6em;
      border-radius: 0.6em;
      }

      .ie6 #status {
      display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
      }

      ul {
      font-size: 0.9em;
      list-style-type: none;
      margin-bottom: 0.6em;
      padding: 0;
      }

      #status li {
      line-height: 1.3;
      }

      #status h1 {
      text-transform: uppercase;
      font-size: 1.1em;
      margin: 0 0 0.3em;
      }

      #page-body {
      margin: 1em .5em 1.25em 5em;
      }

      h2 {
      margin-top: 1em;
      margin-bottom: 0.3em;
      font-size: 1em;
      }

      p {
      line-height: 1.5;
      margin: 0.25em 0;
      }

      #controller-list ul {
      list-style-position: inside;
      }

      #controller-list li {
      line-height: 1.3;
      list-style-position: inside;
      margin: 0.25em 0;
      }

      @media screen and (max-width: 480px) {
      #status {
      display: none;
      }

      #page-body {
      margin: 0 1em 1em;
      }

      #page-body h1 {
      margin-top: 0;
      }
      }

    </style>
  </head>
  <body>
    <script>
      function searchDocument(){
       var strDoc = jQuery('#strDocument').val();
       var docData;
       ${ remoteFunction(action:'searchDocument',  params:'\'strDocument=\' + strDoc', onSuccess: 'loadDocument(data)') }
      }
      function loadDocument(data){
        jQuery('#tag').val(data.tag);
        jQuery('#transportista').val(data.transportista.nombre);
        jQuery('#tipoTransporte').val(data.tipoTransporte.nombre);
        jQuery('#operador').val(data.operador.nombre);
        jQuery('#operador').val(data.operador.nombre);
        jQuery('#placas').val(data.placas);
        jQuery('#caja1').val(data.caja1);
        jQuery('#caja2').val(data.caja2);
        jQuery('#tractor').val(data.tractor);
      }
    </script>
    <div class="nav" role="navigation">
      <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
      </ul>
    </div >
    <div id="page-body">
      <h1>Planta Nissan</h1>
      <h3>Entrada </h3>
      <br/>
      <br/>
      <div>
        <label>Documento</label>
        <g:textField id="strDocument" name="strDocument" />
        <button onclick="searchDocument()">Buscar Documento</button>
      </div>
      <br/>
      <br/>
      <div>

        <table widt="600px">
          <thead>
          </thead>
          <tbody>
            <tr>
              <td>Transportista</td>
              <td>
                <!--<g:select optionKey="nombre" optionValue="nombre"
                          name="transportista.nombre" from="${listaTransportista}" />-->
                <input type="text" name="transportista" id="transportista" readonly/>

              </td>
              <td>Tipo Transporte</td>
              <td>
                 <input type="text" name="tipoTransporte" id="tipoTransporte" readonly/>
              </td>
            </tr>
            <tr>
              <td>Operador</td>
              <td>
                 <input type="text" name="operador" id="operador" readonly />
              </td>
              <td>Tractor</td>
              <td>
                 <input type="text" name="tractor" id="tractor" readonly/>
              </td>
            </tr>
            <tr colspan="2">
              <td>Placas</td>
              <td>
                 <input type="text" name="placas" id="placas"  readonly/>
              </td>
            </tr>
            <tr>
              <td>Caja 1</td>
              <td>
                 <input type="text" name="caja1" id="caja1" readonly />
              </td>
              <td>Caja 2</td>
              <td>
                 <input type="text" name="caja2" id="caja2" readonly />
              </td>
            </tr>
            <tr>
              <td>Tag asignado en la planta</td>
              <td>
                 <input type="text" name="tag" id="tag"  readonly/>
              </td>
            </tr>
            <tr>
              <td>Hora Entrda </td>
              <td>
                 <input type="text" name="horaEntrada" id="horaEntrada" />
              </td>
              <td>Hora Salida </td>
              <td>
                 <input type="text" name="horaSalida" id="horaSalida"/>
              </td>
            </tr>
            <tr>
              <td>Cargar documento</td>
              <td>
                <input type="file" name="identificacion" id="identificacion" />
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </body>
</html>
