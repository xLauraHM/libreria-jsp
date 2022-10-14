<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Libro"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

    String isbn = request.getParameter("isbn");
    
    List<Libro> libros = (List) session.getAttribute("libros");

    Libro libro = new Libro();
    libro.setIsbn(isbn);

    int index = libros.indexOf(libro);

    libro = libros.get(index);

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Libro</title>
</head>
<body>

    <form action="modificarlibro.jsp" method="post">
        <label for="isbn">isbn</label>
        <input type="text" name="isbn" id="isbn" value="<%= libro.getIsbn()%>">
        <label for="titulo">titulo</label>
        <input type="text" name="titulo" id="titulo" value="<%= libro.getTitulo()%>">
        <label for="autor">Autor</label>
        <input type="text" name="autor" id="autor" value="<%= libro.getAutor()%>">
        <input type="submit" value="Modificar">
    </form>
    
</body>
</html>