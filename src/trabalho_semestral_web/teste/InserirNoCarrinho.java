package trabalho_semestral_web.teste;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class InserirNoCarrinho
 */
@WebServlet("/InserirNoCarrinho")
public class InserirNoCarrinho extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InserirNoCarrinho() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sessao = request.getSession();

		PrintWriter out;
		response.setContentType("text/html;charset=UTF-8");
		out = response.getWriter();

		if(sessao.getAttribute("lstNomes") == null) {
			List<String> lstNomes = new ArrayList<>();
			List<String> lstPrecos = new ArrayList<>();

			String nome = request.getParameter("nome");
			String preco = request.getParameter("preco");
			lstNomes.add(nome);
			lstPrecos.add(preco);

			sessao.setAttribute("lstNomes", lstNomes);
			sessao.setAttribute("lstPrecos", lstPrecos);

			out.println("<h1>Produto adicionado ao carrinho!<h1><br><br>");
		}else {
			List<String> lstNomes = (List<String>) sessao.getAttribute("lstNomes");
			List<String> lstPrecos = (List<String>) sessao.getAttribute("lstPrecos");

			String nome = request.getParameter("nome");
			String preco = request.getParameter("preco");
			lstNomes.add(nome);
			lstPrecos.add(preco);

			sessao.setAttribute("lstNomes", lstNomes);
			sessao.setAttribute("lstPrecos", lstPrecos);


			out.println("<h1>Produto adicionado ao carrinho!<h1><br><br>");

		}

		out.println("\"<span><a href='javascript:history.back()'>[Voltar ao index]</a></span>\"");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
