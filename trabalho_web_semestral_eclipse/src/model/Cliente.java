package model;

public class Cliente {
	
	private int codigo;
	private String nome;
	private String cpf;
	private String rg;
	private String dataNascimento;
	private String endere�o;
	private Sexo sexo;
	private String senha;
		
	
	public Cliente(String nome, String cpf, String rg, String dataNascimento, String endere�o, String sexo,
			String senha) {
		super();
		this.nome = nome;
		this.cpf = cpf;
		this.rg = rg;
		this.dataNascimento = dataNascimento;
		this.endere�o = endere�o;
		if(sexo.equals("m")) {
			this.sexo = Sexo.MASCULINO;
		}else if(sexo.equals("f")) {
			this.sexo = Sexo.FEMININO;
		}
		this.senha = senha;
	}
	
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getRg() {
		return rg;
	}
	public void setRg(String rg) {
		this.rg = rg;
	}
	public String getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	public String getEndere�o() {
		return endere�o;
	}
	public void setEndere�o(String endere�o) {
		this.endere�o = endere�o;
	}
	public Sexo getSexo() {
		return sexo;
	}
	public void setSexo(Sexo sexo) {
		this.sexo = sexo;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	
}
