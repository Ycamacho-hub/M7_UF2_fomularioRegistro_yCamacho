package usuarios;

public class Registro {

	String nombre;
	String apellidos;
	String email;
	String fNacimiento;
	String sexo;
	boolean isPeliTipe; //Hace referencia a los tipos Pelicula y Series. Si es true el tipo es película, sino, series.
	boolean likeAccion;
	boolean likeCyF;
	boolean likeHistoria;
	boolean likeDrama;
	boolean likeComedia;
	String contraseña;
	
	// Constructor
	
	public Registro(String nombre, String apellidos, String email, String fNacimiento, String sexo, String isPeliTipe,
			String likeAccion, String likeCyF, String likeHistoria, String likeDrama, String likeComedia,
			String contraseña) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.email = email;
		this.fNacimiento = fNacimiento;
		this.sexo = sexo;
		this.isPeliTipe = asignarTipo(isPeliTipe);
		setLikeAccion(asignarGenero(likeAccion));
		setLikeCyF(asignarGenero(likeCyF));
		setLikeHistoria(asignarGenero(likeHistoria));
		setLikeDrama(asignarGenero(likeDrama));;
		setLikeComedia(asignarGenero(likeComedia));;
		this.contraseña = contraseña;
	}
	
	// Metodos
	
	private boolean asignarTipo(String tipo) {
		boolean isPeli = false;
		if(tipo.equals("peliculas")) isPeli= true;
		
		return isPeli;
	}
	
	private boolean asignarGenero(String genero) {
		boolean gene= false;
		if(genero != null && !genero.equals("")) gene = true;
		return gene;
	}
	
	
	// Getters y Setters
	
	public String getNombre() {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getfNacimiento() {
		return fNacimiento;
	}
	public void setfNacimiento(String fNacimiento) {
		this.fNacimiento = fNacimiento;
	}
	
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	
	public boolean isPeliTipe() {
		return isPeliTipe;
	}
	public void setPeliTipe(boolean isPeliTipe) {
		this.isPeliTipe = isPeliTipe;
	}
	
	public boolean isLikeAccion() {
		return likeAccion;
	}
	public void setLikeAccion(boolean likeAccion) {
		this.likeAccion = likeAccion;
	}
	
	public boolean isLikeCyF() {
		return likeCyF;
	}
	public void setLikeCyF(boolean likeCyF) {
		this.likeCyF = likeCyF;
	}
	
	public boolean isLikeHistoria() {
		return likeHistoria;
	}
	public void setLikeHistoria(boolean likeHistoria) {
		this.likeHistoria = likeHistoria;
	}
	
	public boolean isLikeDrama() {
		return likeDrama;
	}
	public void setLikeDrama(boolean likeDrama) {
		this.likeDrama = likeDrama;
	}
	
	public boolean isLikeComedia() {
		return likeComedia;
	}
	public void setLikeComedia(boolean likeComedia) {
		this.likeComedia = likeComedia;
	}
	
	public String getContraseña() {
		return contraseña;
	}
	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}

	
	// toString
	@Override
	public String toString() {
		return "Registro [nombre=" + nombre + ", apellidos=" + apellidos + ", email=" + email + ", fNacimiento="
				+ fNacimiento + ", sexo=" + sexo + ", isPeliTipe=" + isPeliTipe + ", likeAccion=" + likeAccion
				+ ", likeCyF=" + likeCyF + ", likeHistoria=" + likeHistoria + ", likeDrama=" + likeDrama
				+ ", likeComedia=" + likeComedia + ", contraseña=" + contraseña + "]";
	}
	
}
