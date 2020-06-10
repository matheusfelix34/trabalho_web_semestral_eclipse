package model;

import java.sql.Date;

public class Pedido {
	private int id;
	private Produto prod[];
	private Date registro;
	
	public Pedido(int id, Produto prod[], Date registro) {
		this.id = id;
		this.prod = prod;	
		this.registro = registro;
		
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
	
	public Date  getRegistro() {
		return registro;
	}
	
	public void setRegistro(Date registro) {
		this.registro = registro;
	}
	
	
	

	

}
