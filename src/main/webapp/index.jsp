<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Libro"%>
<%@page import="com.llvillar.libreria.model.Socio"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

  Libro libro = new Libro();
  libro.setIsbn("1");
  libro.setAutor("Miguel de cervantes");
  libro.setTitulo("El quijote");

  Libro libro1 = new Libro();
  libro1.setIsbn("2");
  libro1.setAutor("JJ Tolkins");
  libro1.setTitulo("El señor de los anillos");

  Libro libro3 = new Libro();
  libro3.setIsbn("3");
  libro3.setAutor("Elvira Lindo");
  libro3.setTitulo("Manolito Gafotas");

  List<Libro> libros = new ArrayList<Libro>();
  libros.add(libro);
  libros.add(libro1);
  libros.add(libro3);

  session.setAttribute("libros", libros);

  Socio socio = new Socio();
  socio.setDni("1111");
  socio.setNombre("Laura");
  socio.setApellidos("Haro Molina");
  socio.setTelefono("111111111");
  socio.setDireccion("Calle 1");

  Socio socio1 = new Socio();
  socio1.setDni("2222");
  socio1.setNombre("Juan");
  socio1.setApellidos("Perez Ruiz");
  socio1.setTelefono("222222222");
  socio1.setDireccion("Calle 2");

  Socio socio2 = new Socio();
  socio2.setDni("3333");
  socio2.setNombre("Carla");
  socio2.setApellidos("Martinez Murillo");
  socio2.setTelefono("333333333");
  socio2.setDireccion("Calle 3");

  List<Socio> socios = new ArrayList<Socio>();
  socios.add(socio);
  socios.add(socio1);
  socios.add(socio2);

  session.setAttribute("socios", socios);
%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Libreria</title>
</head>
<body>

<h1>Menu principal</h1>
<p><a href="libros/libros.jsp">Libros</a></p>
<p><a href="socios/socios.jsp">Socios</a></p>

</body>
</html>