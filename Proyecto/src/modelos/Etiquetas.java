package modelos;

import java.io.Serializable;

public class Etiquetas implements Serializable{
	private String sexo;
	private String descripcion;
	private String estudios;
	private String oculto;
	private String estadoCivil;
	private String paisesVisitados;
	private String pais;
	private String ciudad;
	private String paisVisitar;
	private String docente;
	
	public Etiquetas() {
		super();
	}

	public Etiquetas(String estadoCivil, String pais, String ciudad, String estudios, String sexo, String ciudadSeleccionada, String updownselect, String descripcion, String oculto) {
		super();
		this.pais = pais;
		this.ciudad = ciudad;
		this.estudios = estudios;
		this.sexo = sexo;
		this.ciudadSeleccionada = ciudad;
		this.updownselect = updownselect;
		this.descripcion = descripcion;
		this.oculto = oculto;
		this.estadoCivil = estadoCivil;
	}

	
	public String getPaisVisitar() {
		return paisVisitar;
	}

	public void setPaisVisitar(String paisVisitar) {
		this.paisVisitar = paisVisitar;
	}

	private String ciudadSeleccionada;
	private String updownselect;
	
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

	public String getDocente() {
		return docente;
	}

	public void setDocente(String docente) {
		this.docente = docente;
	}

	
}
