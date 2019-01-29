<%-- 
    Document   : proceso
    Created on : 29-ene-2019, 18:14:08
    Author     : J. Carlos F. Vico <jcarlosvico@maralboran.es>
--%>

<%@page import="daw.ejemploweb.Cliente"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informaci�n del formulario</title>
    </head>
    <body>
        <!-- Se recogen los valores que env�a el formulario mediante el objeto 	request y su m�todo getParameter() -->
        <%
            Cliente cli;
            String edad = request.getParameter("edad");
            String nombre = request.getParameter("nombre");
            String email = request.getParameter("email");
            if (email.equals("") || edad.equals("") || nombre.equals("")) {
        %>
        <!-- Si no se ha introducido alg�n par�metro se muestra el error -->
            <center> <h2>Faltan par�metros</h2> </center>
        <!-- Se han introducido los par�metros, creamos el objeto con los datos -->
        <% } else {
            cli = new Cliente(nombre, Integer.parseInt(edad), email);
        %>
        <p>
            Informaci�n recogida por el servidor:<br>
            Edad: <%= cli.getEdad()%> <br>
            Nombre: <%= cli.getNombre()%> <br>
            Correo: <%= cli.getEmail()%> <br>
        <% }%> <!-- LLave del else -->
    </body>
</html>
