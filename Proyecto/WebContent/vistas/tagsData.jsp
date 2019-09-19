<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Etiquetas de data</title>
</head>
<body>
	<s:label><h4>ETIQUETAS DE DATA</h4></s:label>
	<s:label><h5>SET</h5></s:label>
	<!-- Crear una variable llamada variable llamada docente y asignarle el valor de Jairo -->
	<s:set var="docente" value="%{'Jairo'}"></s:set>
	<s:property value="%{#docente}"/><br>
	<s:label><h5>BEAN</h5></s:label>
	<!-- Utilizar la clase del paquete modelos Etiquetas.java como bean. -->
	<!-- ingresar datos al bean -->
	<s:bean name="modelos.Etiquetas" var="variableBean" >
		<s:param name="sexo">Masculino</s:param>
		<s:param name="descripcion">Hombre de edad madura</s:param>
		<s:param name="pais">Colombia</s:param>
	</s:bean>
	<!-- mostrar datos del bean -->
	El campo de la clase Etiquetas sexo es:<s:property value="#variableBean.sexo"/>
	<br>
	<s:label><h5>INCLUDE</h5></s:label>
	<!-- Crear pagina miInclude.html para que sea incluida desde este tag de struts. -->
	<s:include value="miInclude.jsp">
		<s:param name="parametroDelTag">........SOY EL PARAMETRO LEIDO......</s:param>
	</s:include>
	
	
	<br>
	<s:label><h5>ACTION   la accion es del paquete por defecto llamada verEtiquetas</h5></s:label>
	<s:action name="verEtiquetas" executeResult="true" namespace="/" var="variableAction">
	</s:action>
	
	
</body>
</html>