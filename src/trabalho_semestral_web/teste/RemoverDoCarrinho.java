package trabalho_semestral_web.teste;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Produto;

/**
 * Servlet implementation class RemoverDoCarrinho
 */
@WebServlet("/RemoverDoCarrinho")
public class RemoverDoCarrinho extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RemoverDoCarrinho() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sessao = request.getSession();

		PrintWriter out;
		response.setContentType("text/html;charset=UTF-8");
		out = response.getWriter();

		List<Produto> produtos = (List<Produto>) sessao.getAttribute("lstProdutos");

		
		String nome = request.getParameter("nome");
		Double preco = Double.parseDouble(request.getParameter("preco"));
		Produto p = new Produto(nome, preco);
		int postion = produtos.indexOf(p);
		produtos.remove(postion);
		

		sessao.setAttribute("lstProdutos", produtos);


		response.sendRedirect("views/compras/carrinho2.jsp");
	}

}
