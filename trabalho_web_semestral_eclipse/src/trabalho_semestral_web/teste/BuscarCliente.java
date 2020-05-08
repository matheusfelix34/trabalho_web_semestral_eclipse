package trabalho_semestral_web.teste;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BuscarCliente
 */
@WebServlet("/BuscarCliente")
public class BuscarCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuscarCliente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		String opcao = request.getParameter("opcao");
		
		if(opcao.equals("excluir")){
			response.sendRedirect("views/clientes/exclusao_de_cliente.jsp");
		}
        
		if(opcao.equals("alterar")){
			response.sendRedirect("views/clientes/alteracao.jsp");
        }
	   
		if(opcao.equals("exclusao_sucesso")) {
			response.sendRedirect("views/clientes/exclusao_sucedida.jsp");

		}
		if(opcao.equals("alterado_sucesso")) {
			response.sendRedirect("views/loja/index.jsp");

		}
		if(opcao.equals("cadastrado_sucesso")) {
			response.sendRedirect("views/loja/login.jsp");

		}
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
