<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Socio"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de socios</title>

    <style>
        table, th, td {
            border: 1px solid;
        }
    </style>

</head>
<body>
    <h2>socios</h2>
    <table>
        <tr>
            <th>DNI</th>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Telefono</th>
            <th>Direccion</th>
            <th colspan="2"><a href="nuevosocio.jsp">Nuevo</a></th>
        </tr>
            <%
                List<Socio> socios = (List) session.getAttribute("socios");

                for(Socio socio: socios) {
                    out.print("<tr>");
                    out.print("<td>" + socio.getDni() + "</td>");
                    out.print("<td>" + socio.getNombre() + "</td>");
                    out.print("<td>" + socio.getApellidos() + "</td>");
                    out.print("<td>" + socio.getTelefono() + "</td>");
                    out.print("<td>" + socio.getDireccion() + "</td>");
                    out.print("<td><a href=\"socio.jsp?dni=" + socio.getDni() + "\">editar</a></td>");
                    out.print("<td><a href=\"bajasocio.jsp?dni=" + socio.getDni() + "\">eliminar</a></td>");
                    out.print("</tr>");
                }
            %>
    </table>
</body>
</html>