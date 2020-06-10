package trabalho_semestral_web.teste.cliente;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cliente;


/**
 * Servlet implementation class Cadastrar_cliente
 */
@WebServlet("/Cadastrar_cliente")

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
		 String endere�o="";
		 String senha="";
		
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
		 
		 
		 if(request.getParameter("endere�o") != null && !request.getParameter("endere�o").equals("")) {
			 endere�o = request.getParameter("endere�o");
			 
			 
			}
		 
		 if(request.getParameter("senha") != null && !request.getParameter("senha").equals("")) {
			 endere�o = request.getParameter("senha");
			}
		 
		 
		 
		
			
		 Cliente exModel = new Cliente(nome,cpf,rg,dataNascimento,endere�o,senha);
		 
		//Preencher o model com os valores recebidos
		 
			//ExemploSessaoModel exModel = new ExemploSessaoModel(nome, email);
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
