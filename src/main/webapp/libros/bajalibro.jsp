<<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Libro"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String isbn = request.getParameter("isbn");

    Libro libro = new Libro();
    libro.setIsbn(isbn);


    List<Libro> libros = (List) session.getAttribute("libros");

    libros.remove(libro);

    session.setAttribute("libros", libros);

    response.sendRedirect("libros.jsp");

%>
