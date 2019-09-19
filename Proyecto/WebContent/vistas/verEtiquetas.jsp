<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Etiquetas de struts 2</title>
</head>
<body>
	<h2>Etiquetas de formulario</h2>	
	<s:form action="mostrarEtiquetas" >
		 
		<s:label for="sexo" value="Etiqueta s:radio"/>
		<s:radio list="{'Masculino','Femenino'}" name="sexo" label="Seleccione su sexo" ></s:radio>
		
		<s:label for="descripcion" value="etiqueta s:textarea"></s:label>
		<s:textarea cols="30" rows="5" value="Soy una etiqueta textarea de struts 2." name="descripcion"/> 
		
		<s:checkboxlist name="estudios" list="{'Basica','Media','Universidad','Post grado'}" value="Estudias realizados"></s:checkboxlist>
				
		<s:label for="oculto" value="Etiqueta hidden"></s:label>
		<s:hidden name="oculto" value="no me veo"/>
		
		<s:label for="estadoCivil" value="Etiqueta combobox"></s:label>
		<s:combobox list="{'Soltero','Casado','Divorciado','Viudo','UMDH','Otro..'}" name="estadoCivil" label="Estado civil" emptyOption="true"  readonly="false" />  
		
		<!--  
		allowRemoveAll: Determina si se mostrará el botón para eliminar todos los valores.
		allowUpDown: Determina si se mostrarán los botones para subir y bajar los valores en la lista.
		downLabel: Etiqueta del botón que baja los valores.
		list (requerido): Lista con los valores que tendrá el select al comenzar.
		removeAllLabel: Etiqueta del botón que elimina todos los valores.
		removeLabel: Etiqueta del botón que elimina un valor.
		upLabel: Etiqueta del botón que sube los valores.
		-->
		<s:label for="paisesVisitados" value="Indique los paises que ha visitado, si no esta en la lista agreguelo"></s:label>
		<s:inputtransferselect label="Cuáles son los paises visitados"  list="{'EEUU','Canada','Mexico','Venezuela','Colombia','China' }" name="paisesVisitados"
		allowRemoveAll="remove all" allowUpDown="Up  Down" downLabel="down label" removeAllLabel="rem all labe" removeLabel="rem label" upLabel="up labe"/>

		<s:label for="etiquetaFile" value="file etiqueta"/>
		<s:file name="etiquetaFile" accept="text/html,text/plain" />
		<s:token />
		<s:label for="pais" value="Etiqueta s:doubleselect"></s:label>
		<s:doubleselect label="Pais y ciudad de nacimiento " 
		name="pais" list="paisesMap.keySet()" 
		doubleName="ciudad" 
		doubleList="paisesMap.get(top)" />
				
		<br><br>
		<s:select label="Pais a visitar" name="paisVisitar" value="%{'America'}" list="%{#{'America':'America'}}">
		      <s:optgroup label="Asia" list="%{#{'India':'India','China':'China'}}" />
		      <s:optgroup label="Europe" list="%{#{'UK':'UK','Sweden':'Sweden','Italy':'Italy'}}" />
		      <s:optgroup label="Africa" list="%{#{'Egipto':'Egipto', 'Sahara':'Sahara','Tunes':'Tunesia'}}"></s:optgroup>
      	</s:select>
      	
      	
		<s:doubleselect label="Server (OGNL) "
		name="server1" list="#serverList.keySet()"
		doubleName="server2" doubleList="#serverList[top]" />
		
		<s:label for="ciudadSeleccionada" value="ciudadSeleccionada"></s:label><br>
		<s:doubleselect label="Seleccione pais y ciudad "
		name="paisasds" list="paisesMap.keySet()"
		doubleName="ciudadSeleccionada" doubleList="paisesMap.get(top)" />
      	<br><br>
		
		<s:label for="prioritisedFavouriteCountries" value="ciudadSeleccionada"></s:label><br>
		<s:updownselect
		list="#{'england':'England', 'america':'America', 'germany':'Germany'}"
		name="prioritisedFavouriteCountries"
		headerKey="-1"
		headerValue="--- Please Order Them Accordingly ---"
		emptyOption="true" />
		
		
		
		<s:label for="etiquetaAction" value="Etiqueta s:action"/>
		<s:action name="mostrarEmpresa" executeResult="true" /><br/> 
		
		<br>
		<s:bean name="modelos.Etiquetas" var="miEtiqueta">  
    		<s:param name="pais">Peru</s:param>
    		<s:param name="ciudad">Lima</s:param>  
		</s:bean>  
		<s:property value="#miEtiqueta.pais" /> 
		<s:property value="#miEtiqueta.ciudad" />
		<br>
		
		<s:submit value="Enviar"></s:submit>
	</s:form>

</body>
</html>