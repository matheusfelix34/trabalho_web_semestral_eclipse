package trabalho_semestral_web.teste;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cliente;

/**
 * Servlet implementation class Cadastrar_cliente
 */
//@WebServlet("/Cadastrar_cliente")

public class Cadastrar_cliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cadastrar_cliente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	     String nome ="";
		 String cpf= "";
		 String rg= "";
		 String dataNascimento="";
		 String endereço="";
		 String senha="";
		 //teste
		
		 if(request.getParameter("nome") != null && !request.getParameter("nome").equals("")) {
				nome = request.getParameter("nome");
			}
		 
		 
		 if(request.getParameter("cpf") != null && !request.getParameter("cpf").equals("")) {
			 cpf = request.getParameter("cpf");
			}
		 
			
		 if(request.getParameter("rg") != null && !request.getParameter("rg").equals("")) {
			 rg = request.getParameter("rg");
			}
		 
		 
		 if(request.getParameter("dataNascimento") != null && !request.getParameter("dataNascimento").equals("")) {
			 dataNascimento = request.getParameter("dataNascimento");
			}
		 
		 
		 if(request.getParameter("endereço") != null && !request.getParameter("endereço").equals("")) {
			 endereço = request.getParameter("endereço");
			 
			 
			}
		 
		 if(request.getParameter("senha") != null && !request.getParameter("senha").equals("")) {
			 endereço = request.getParameter("senha");
			}
		 
		 
		 
		 response.sendRedirect("/trabalho_web_semestral_eclipse/Cookie_adicionado.jsp");
		//Preencher o model com os valores recebidos
		/* Cliente exModel = new Cliente(nome,cpf,rg,dataNascimento,endereço,senha);
		 
			adicionarSessao(exModel, request);
		
		 
			//ExemploSessaoModel exModel = new ExemploSessaoModel(nome, email);
			//response.sendRedirect("/ExemploAulaSessao/Resposta.jsp");
			RequestDispatcher reqDispatcher = request.getRequestDispatcher("/Resposta.jsp");
			reqDispatcher.forward(request, response); */
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
public void adicionarSessao(Cliente modelParametro, HttpServletRequest request ) {
	
		
		//Colocando os atributos na sessão
		HttpSession exSessao = request.getSession();
		exSessao.setAttribute("atributoCliente", modelParametro);
				
		
		
	}








	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
