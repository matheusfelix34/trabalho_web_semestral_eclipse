package trabalho_semestral_web.teste;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 * Servlet implementation class Produto_srv
 */
@WebServlet("/Produto_srv")
public class Produto_srv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Produto_srv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out;
		response.setContentType("text/html;charset=UTF-8");
		out = response.getWriter();
		String opcao =request.getParameter("opcao");
		
		if(opcao.equals("cadastro")){
			ArrayList<String> bandas = new ArrayList<String> ();
			String produto =request.getParameter("produto");
			String valor= request.getParameter("valor");
			
			response.sendRedirect("views/produtos/cadastro_concluido.jsp");
        }
		if(opcao.equals("alterar")){
			response.sendRedirect("views/produtos/alteracao.jsp");
        }
		if(opcao.equals("excluir")){
			response.sendRedirect("views/produtos/exclusao_de_produto.jsp");
        }
		if(opcao.equals("alteracao_concluida")){
			response.sendRedirect("views/produtos/alteracao_concluida.jsp");
        }
		if(opcao.equals("excluisao_sucesso")){
			response.sendRedirect("views/produtos/exclusao_sucedida.jsp");
        }
		
		
if(opcao.equals("cadastrado_sucesso")) {
	       
			out.println("<h1>Cadstro realizado com sucesso<h1><br><br>");
			out.println("\"<span><a href='javascript:history.back()'>[Voltar]</a></span>\"");
		

		}
		
		
		
		
		
		 /*String nome = request.getParameter("usuario");
	        String senha = request.getParameter("senha");
	         
	        if(nome.equals("servlet") && senha.equals("12345")){
	            response.sendRedirect("index.jsp");
	        }*/
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
