package model;

public class Registro {
	private int codigoRegistro;
	private int codigoVenda;
	private int codigoCliente;
	private int codigoProduto;
	private int quantidadeProduto;
	
	
	public Registro(int codigoRegistro, int codigoVenda, int codigoCliente, int codigoProduto, int quantidadeProduto) {
		super();
		this.codigoRegistro = codigoRegistro;
		this.codigoVenda = codigoVenda;
		this.codigoCliente = codigoCliente;
		this.codigoProduto = codigoProduto;
		this.quantidadeProduto = quantidadeProduto;
	}


	public int getCodigoRegistro() {
		return codigoRegistro;
	}


	public void setCodigoRegistro(int codigoRegistro) {
		this.codigoRegistro = codigoRegistro;
	}


	public int getCodigoVenda() {
		return codigoVenda;
	}


	public void setCodigoVenda(int codigoVenda) {
		this.codigoVenda = codigoVenda;
	}


	public int getCodigoCliente() {
		return codigoCliente;
	}


	public void setCodigoCliente(int codigoCliente) {
		this.codigoCliente = codigoCliente;
	}


	public int getCodigoProduto() {
		return codigoProduto;
	}


	public void setCodigoProduto(int codigoProduto) {
		this.codigoProduto = codigoProduto;
	}


	public int getQuantidadeProduto() {
		return quantidadeProduto;
	}


	public void setQuantidadeProduto(int quantidadeProduto) {
		this.quantidadeProduto = quantidadeProduto;
	}
}
