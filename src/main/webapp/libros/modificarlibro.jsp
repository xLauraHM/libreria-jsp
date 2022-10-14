<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Libro"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String isbn = request.getParameter("isbn");
    String titulo = request.getParameter("titulo");
    String autor = request.getParameter("autor");

    Libro libro = new Libro();
    libro.setIsbn(isbn);
    libro.setTitulo(titulo);
    libro.setAutor(autor);

    List<Libro> libros = (List) session.getAttribute("libros");

    libros.remove(libro);
    libros.add(libro);

    session.setAttribute("libros", libros);

    response.sendRedirect("libros.jsp");

%>
