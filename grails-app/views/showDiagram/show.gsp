<!DOCTYPE html>
<html xmlns:g="http://www.w3.org/1999/html">
<head>
  <title>Planta Nissan</title>
  <meta name="layout" content="main">
</head>
<body>
  <g:form>
    <h1>Planta Nissan</h1>

    <img src="${createLink(controller: 'showDiagram', action: 'getPath')}" width="800" height="500" >
  </g:form>
</body>
</html>