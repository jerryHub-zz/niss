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
        <g:textField id="documento" name="myField" value="${myValue}" />
        <button onclick="<g:remoteFunction controller='controlRecibo' action='searchDocument' update='documento'/>">Buscar Documento</button>
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
                <g:select optionKey="nombre" optionValue="nombre"
                          name="transportista.nombre" from="${listaTransportista}" />


              </td>
              <td>Tipo Transporte</td>
              <td>
                 <input type="text" name="idTransportista" />
              </td>
            </tr>
            <tr>
              <td>Operador</td>
              <td>
                 <input type="text" name="idTransportista" />
              </td>
              <td>Tractor</td>
              <td>
                 <input type="text" name="idTransportista" />
              </td>
            </tr>
            <tr colspan="2">
              <td>Placas</td>
              <td>
                 <input type="text" name="idTransportista" />
              </td>
            </tr>
            <tr>
              <td>Caja 1</td>
              <td>
                 <input type="text" name="idTransportista" />
              </td>
              <td>Caja 2</td>
              <td>
                 <input type="text" name="idTransportista" />
              </td>
            </tr>
            <tr>
              <td>Tag asignado en la planta</td>
              <td>
                 <input type="text" name="tag" />
              </td>
            </tr>
            <tr>
              <td>Hora Entrda </td>
              <td>
                 <input type="text" name="tag" />
              </td>
              <td>Hora Salida </td>
              <td>
                 <input type="text" name="tag" />
              </td>
            </tr>
            <tr>
              <td>Cargar documento</td>
              <td>
                <input type="text" name="tag" />
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </body>
</html>
