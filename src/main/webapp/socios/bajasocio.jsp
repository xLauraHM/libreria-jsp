<<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Socio"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String dni = request.getParameter("dni");

    Socio socio = new Socio();
    socio.setDni(dni);

    List<Socio> socios = (List) session.getAttribute("socios");

    socios.remove(socio);

    session.setAttribute("socios", socios);

    response.sendRedirect("socios.jsp");

%>
