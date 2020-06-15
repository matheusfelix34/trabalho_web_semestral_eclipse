package model;

import java.sql.Date;

public class Pedido {
	private int id;
	private Produto prod[];
	private String dateRegistro;
	
	public Pedido(int id, Produto prod[], String dateRegistro) {
		this.id = id;
		this.prod = prod;	
		this.dateRegistro = dateRegistro;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Produto[] getProd() {
		return prod;
	}

	public void setProd(Produto[] prod) {
		this.prod = prod;
	}
	
	public String getDateRegistro() {
		return dateRegistro;
	}
	
	public void setDateRegistro(String dateRegistro) {
		this.dateRegistro = dateRegistro;
	}
	
	
	

	

}
