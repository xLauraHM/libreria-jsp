<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Socio"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

    String dni = request.getParameter("dni");
    
    List<Socio> socios = (List) session.getAttribute("socios");

    Socio socio = new Socio();
    socio.setDni(dni);

    int index = socios.indexOf(socio);

    socio = socios.get(index);

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Socio</title>
</head>
<body>

    <form action="modificarsocio.jsp" method="post">
        <label for="dni">DNI</label>
        <input type="text" name="dni" id="dni" value="<%= socio.getDni()%>">

        <label for="nombre">Nombre</label>
        <input type="text" name="nombre" id="nombre" value="<%= socio.getNombre()%>">

        <label for="apellidos">Apellidos</label>
        <input type="text" name="apellidos" id="apellidos" value="<%= socio.getApellidos()%>">

        <label for="telefono">Telefono</label>
        <input type="text" name="telefono" id="telefono" value="<%= socio.getTelefono()%>">

        <label for="direccion">Direccion</label>
        <input type="text" name="direccion" id="direccion" value="<%= socio.getDireccion()%>">

        <input type="submit" value="Modificar">
    </form>
    
</body>
</html>