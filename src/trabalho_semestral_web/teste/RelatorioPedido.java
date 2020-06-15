package trabalho_semestral_web.teste;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cliente;
import model.Pedido;
import model.Produto;

/**
 * Servlet implementation class RelatorioPedido
 */
@WebServlet("/RelatorioPedido")
public class RelatorioPedido extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RelatorioPedido() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String dateRegistro="";
		 
		 if(request.getParameter("dateRegistro") != null && !request.getParameter("dateRegistro").equals("")) {
			 dateRegistro = request.getParameter("dateRegistro");
			}
		 
		Produto prod[] = new Produto[1];
		prod[0] = new Produto("iphone", 25);
		//String param = request.getParameter("data_final");
		
			Pedido ped = new Pedido(115, prod, dateRegistro);
			
			adicionarSessao(ped, request);
			/*HttpSession exSessao = request.getSession();
			exSessao.setAttribute("atributoPedido", ped);*/
		

			response.sendRedirect("views/relatorios/relatpedidos.jsp");


		//response.sendRedirect("views/relatorios/relatpedidos.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
public void adicionarSessao(Pedido modelParametro, HttpServletRequest request ) {
	
		
		//Colocando os atributos na sessão
		HttpSession exSessao = request.getSession();
		exSessao.setAttribute("atributoPedido", modelParametro);
				
		
		
	}

}
