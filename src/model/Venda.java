package model;

public class Venda {
	
	private int codigo;
	private int codCliente;
	private double valorTotal;
	
	public Venda() {
		
	}
	
	public Venda(int codigo, int codCliente, double valorTotal) {
		super();
		this.codigo = codigo;
		this.codCliente = codCliente;
		this.valorTotal = valorTotal;
	}
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public int getCodCliente() {
		return codCliente;
	}
	public void setCodCliente(int codCliente) {
		this.codCliente = codCliente;
	}
	public double getValorTotal() {
		return valorTotal;
	}
	public void setValorTotal(double valorTotal) {
		this.valorTotal = valorTotal;
	}
}
