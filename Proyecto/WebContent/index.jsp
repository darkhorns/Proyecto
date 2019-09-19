<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h1>MANEJO DE ETIQUETAS EN STRUTS 2</h1></center>
<h3>Opciones de Etiquetado que se puede realizar en Struts 2, Seleccione el hipervinxulo para continuar y conoce los diferentes TAGS:</h3>
<s:label >Etiquetas de control con struts:</s:label>
	<s:a href="etiquetasControl/tagsControl">Ver las etiquetas de control</s:a>
	<br>
	<s:label >Etiquetas de data struts:</s:label>
	<s:a href="etiquetasData/tagsData">Ver las etiquetas de data</s:a>
	<br>
	<s:label >Etiquetas GUI con struts:</s:label>
	<s:a href="verEtiquetas">Ver las etiquetas de GUI</s:a>
	
</body>
</html>