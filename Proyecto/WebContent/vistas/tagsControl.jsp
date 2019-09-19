<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Etiquetas de control</title>
</head>
<body>
	<!-- Crear una variable llamada variable llamada docente y asignarle el valor de Jairo -->
	<s:set var="docente" value="%{'Jairo Arenas'}"></s:set>
	<s:label><h4>ETIQUETAS DE CONTROL</h4></s:label>
	<s:label><h5>If -- elseif -- else</h5></s:label>
	<!-- Utilizar la variable docente creada con set para probar los tags if, elseif y else -->
	<s:if test="%{#docente == 'Jairo'}">
		<s:property value="%{#docente}"/>
	</s:if>
	<s:elseif test="%{#docente == 'Jairo Arenas'}">
		<s:property value="%{#docente}"/>
	</s:elseif>
	<s:elseif test="%{#docente == 'Jairo Arenas Gomez'}">
		<s:property value="%{#docente}"/>
	</s:elseif>
	<s:else>
		<s:label>El nombre del docente no es Jairo, ni Jairo Arenas, tampoco Jairo Arenas Gomez</s:label>
	</s:else>
	<br>
	<!-- utilizar la variable docente de la controladora para probar los tags if, else -->
	<s:if test="docente == 'Fulano de tal'">
		<s:property value="docente"/>
	</s:if>
	<s:else>
		<s:label>El docente en la controladora no es Fulano de tal</s:label>
	</s:else>
	<br>
	<s:label><h5>iterator</h5></s:label>
	<!-- Utilizar la lista listaPaises de la controladora para implementar tag iterator -->
	<s:iterator value="listaPaises">
		<s:property />
	</s:iterator>
	<br>
	<s:label><h5>sort    Lista ordenada</h5></s:label>
	<!-- El tag sort ordena una serie de valores
	comparator, es una variable en la controladora que hace referencia a una clase que implementa la interface Comparator
	source es el nombre de la lista en la controladora, es la que se pasa al comparator
	var el nombre de la variable con que sera reconocida la lista ordenada en esta pagina. -->
	<s:sort comparator="compararString" source="listaPaises" var="paisesOrdenados">
	<s:iterator value="#attr.paisesOrdenados">
		<s:property />
	</s:iterator>
	</s:sort>
	<br>
	<s:label><h5>Subset</h5></s:label>
	<s:label><h6>Toda la lista</h6></s:label>
	<s:subset source="listaPaises">
	   <s:iterator>
	      	<s:property />
	   </s:iterator>
	</s:subset>
	<s:label><h6>Comenzando en dos</h6></s:label>
	<s:subset source="listaPaises" start="2">
	   <s:iterator>
	      	<s:property />
	   </s:iterator>
	</s:subset>
	<s:label><h6>Con uso de decider</h6></s:label>
	<!-- El decider es un metodo que se crea en la clase controladora, no tiene una variable asociada 
	el metodo retorna Venezuela -->
	<s:subset source="listaPaises" decider="numberDecider">
	   <s:iterator>
	      	<s:property />
	   </s:iterator>
	</s:subset>
	<s:label><h5>Append    agrega un iterador a otro iterador, pero muestra lista1 completa, lista 2 completa, .-..</h5></s:label>
	<s:append var="variableAppend">
		<s:param value="listaPaises"></s:param>
		<s:param value="listaCiudadesColombia"></s:param>
	</s:append>
	<s:iterator value="%{#variableAppend}">
		<s:property />
	</s:iterator>
	<s:label><h5>Merge    agrega un iterador a otro iterador, pero muestra lista1, lista2, lista1, lista2</h5></s:label>
	<s:merge var="variableMerge">
		<s:param value="listaPaises"></s:param>
		<s:param value="listaCiudadesColombia"></s:param>
	</s:merge>
	<s:iterator value="%{#variableMerge}">
		<s:property />
	</s:iterator>
	
	
</body>
</html>