<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Libro"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de libros</title>

    <style>
        table, th, td {
        border: 1px solid;
        }
    </style>

</head>
<body>
    <h2>libros</h2>
    <table>
        <tr>
            <th>isbn</th>
            <th>Título</th>
            <th>Autor</th>
            <th colspan="2"><a href="nuevolibro.jsp">Nuevo</a></th>
        </tr>
            <%

                List<Libro> libros = (List) session.getAttribute("libros");

                for(Libro libro: libros) {
                    out.print("<tr>");
                    out.print("<td>" + libro.getIsbn() + "</td>");
                    out.print("<td>" + libro.getTitulo() + "</td>");
                    out.print("<td>" + libro.getAutor() + "</td>");
                    out.print("<td><a href=\"libro.jsp?isbn=" + libro.getIsbn() + "\">editar</a></td>");
                    out.print("<td><a href=\"bajalibro.jsp?isbn=" + libro.getIsbn() + "\">eliminar</a></td>");
                    out.print("</tr>");
                }
            %>
    </table>
</body>
</html>