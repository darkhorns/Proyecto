package controladores;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.util.SubsetIteratorFilter.Decider;

import com.opensymphony.xwork2.ActionSupport;

import comparador.ComparadorListString;
import modelos.Etiquetas;

public class ControladorEtiquetas extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private String pais; 
	private String ciudad;
	private String estudios;
	private String sexo; //etiqueta radio
	private String ciudadSeleccionada;
	private String updownselect;
	private String descripcion;
	private String oculto;
	private String estadoCivil;
	private String paisesVisitados;
	private String paisVisitar;
	private String docente;
	
	//variable para referenciar la clase del modelo
	private Etiquetas etiqueta;
	
	//listas para manejar en los controles de formulario
	private ArrayList<String> listaPaises;
	private ArrayList<String> listaCiudadesColombia;
	private ArrayList<String> listaCiudadesVenezuela;
	private ArrayList<String> listaCiudadesCanada;
	private ArrayList<String> listaCiudadesEEUU;
	private ArrayList<String> listaCiudadesMexico;
	
	//Map para manejar doubleselect
	private Map<String, ArrayList<String>> paisesMap;
	
	//variable tipo comparator para la etiqueta sort
	private ComparadorListString compararString;
	
	@Override
	public String execute() throws Exception {
		//asignar valor a docente
		setDocente("Fulano de tal");
		//instanciar la referencia al comparator
		compararString = new ComparadorListString();
		
		//crear la lista de paises
		listaPaises = new ArrayList<String>();
		listaPaises.add("Colombia");
		listaPaises.add("Venezuela");
		listaPaises.add("Canada");
		listaPaises.add("EEUU");
		listaPaises.add("Mexico");
		
		//lista ciudades colombia
		listaCiudadesColombia = new ArrayList<String>();
		listaCiudadesColombia.add("Bogota");
		listaCiudadesColombia.add("Medellin");
		listaCiudadesColombia.add("Manizales");
		
		//lista ciudades venezuela
		listaCiudadesVenezuela = new ArrayList<String>();
		listaCiudadesVenezuela.add("Caracas");
		listaCiudadesVenezuela.add("Maracaibo");
		
		//lista ciudades canada
		listaCiudadesCanada = new ArrayList<String>();
		listaCiudadesCanada.add("Montreal");
		listaCiudadesCanada.add("Vancouvert");
		listaCiudadesCanada.add("Toronto");
				
		//lista ciudades EEUU
		listaCiudadesEEUU = new ArrayList<String>();
		listaCiudadesEEUU.add("Miami");
		listaCiudadesEEUU.add("Washigtong");
		listaCiudadesEEUU.add("Las Vegas");
		
		//lista ciudades mexico
		listaCiudadesMexico = new ArrayList<String>();
		listaCiudadesMexico.add("Guadalajara");
		listaCiudadesMexico.add("Distrito federal");
		listaCiudadesMexico.add("Jalisco");
		listaCiudadesMexico.add("Can Cun");
		
		//mapa para double select
		paisesMap = new HashMap<String, ArrayList<String>>();
		paisesMap.put("Colombia", new ArrayList<String>(Arrays.asList("Bogota", "Medellin", "Manizales")));
		paisesMap.put("Venezuela", listaCiudadesVenezuela);
		paisesMap.put("Canada", listaCiudadesCanada);
		paisesMap.put("EEUU", listaCiudadesEEUU);
		paisesMap.put("Mexico", listaCiudadesMexico);
		
		
		//instanciar el modelo
		etiqueta = new Etiquetas();
		//colocar datos en modelo
		etiqueta.setCiudad(this.ciudad);
		etiqueta.setEstudios(this.estudios);
		etiqueta.setPais(this.pais);
		etiqueta.setSexo(this.sexo);
		etiqueta.setCiudadSeleccionada(this.ciudadSeleccionada);
		etiqueta.setUpdownselect(this.updownselect);
		etiqueta.setDescripcion(this.descripcion);
		etiqueta.setOculto(this.oculto);
		etiqueta.setEstadoCivil(this.estadoCivil);
		
		//retornar string de la accion
		return SUCCESS;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getEstudios() {
		return estudios;
	}

	public void setEstudios(String estudios) {
		this.estudios = estudios;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public ArrayList<String> getListaPaises() {
		return listaPaises;
	}

	public void setListaPaises(ArrayList<String> listaPaises) {
		this.listaPaises = listaPaises;
	}

	public ArrayList<String> getListaCiudadesColombia() {
		return listaCiudadesColombia;
	}

	public void setListaCiudadesColombia(ArrayList<String> listaCiudadesColombia) {
		this.listaCiudadesColombia = listaCiudadesColombia;
	}

	public ArrayList<String> getListaCiudadesVenezuela() {
		return listaCiudadesVenezuela;
	}

	public void setListaCiudadesVenezuela(ArrayList<String> listaCiudadesVenezuela) {
		this.listaCiudadesVenezuela = listaCiudadesVenezuela;
	}

	public ArrayList<String> getListaCiudadesCanada() {
		return listaCiudadesCanada;
	}

	public void setListaCiudadesCanada(ArrayList<String> listaCiudadesCanada) {
		this.listaCiudadesCanada = listaCiudadesCanada;
	}

	public ArrayList<String> getListaCiudadesEEUU() {
		return listaCiudadesEEUU;
	}

	public void setListaCiudadesEEUU(ArrayList<String> listaCiudadesEEUU) {
		this.listaCiudadesEEUU = listaCiudadesEEUU;
	}

	public ArrayList<String> getListaCiudadesMexico() {
		return listaCiudadesMexico;
	}

	public void setListaCiudadesMexico(ArrayList<String> listaCiudadesMexico) {
		this.listaCiudadesMexico = listaCiudadesMexico;
	}

	public Map<String, ArrayList<String>> getPaisesMap() {
		return paisesMap;
	}

	public void setPaisesMap(Map<String, ArrayList<String>> paisesMap) {
		this.paisesMap = paisesMap;
	}
	
	public String getPaisVisitar() {
		return paisVisitar;
	}

	public void setPaisVisitar(String paisVisitar) {
		this.paisVisitar = paisVisitar;
	}

	public String getPaisesVisitados() {
		return paisesVisitados;
	}

	public void setPaisesVisitados(String paisesVisitados) {
		this.paisesVisitados = paisesVisitados;
	}

	public String getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public String getOculto() {
		return oculto;
	}

	public void setOculto(String oculto) {
		this.oculto = oculto;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getUpdownselect() {
		return updownselect;
	}

	public void setUpdownselect(String updownselect) {
		this.updownselect = updownselect;
	}

	public String getCiudadSeleccionada() {
		return ciudadSeleccionada;
	}

	public void setCiudadSeleccionada(String ciudadSeleccionada) {
		this.ciudadSeleccionada = ciudadSeleccionada;
	}

	public String getDocente() {
		return docente;
	}

	public void setDocente(String docente) {
		this.docente = docente;
	}

	public ComparadorListString getCompararString() {
		return compararString;
	}

	public void setCompararString(ComparadorListString compararString) {
		this.compararString = compararString;
	}
	
	
	public void validate() {
		
		
		//super.validate
	}

	public Decider getNumberDecider() {
	     return new Decider() {
	         public boolean decide(Object obj) throws Exception {
	             String number = ((String)obj).toString();

	             if(("Venezuela").equals(number)){
	            	 return true;//display it
	             }else{
	            	 return false;//ignore
	             }
	         }
	     };
	}
	
}
