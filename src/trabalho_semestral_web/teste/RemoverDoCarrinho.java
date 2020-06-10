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

		int i = -1;
		String nome = request.getParameter("nome");
		Double preco = Double.parseDouble(request.getParameter("preco"));
		try {
			for(Produto prod : produtos) {
				if(prod.getNome().equals(nome) && prod.getPreco() == preco) {
					i = produtos.indexOf(prod);
					produtos.remove(i);
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		sessao.setAttribute("lstProdutos", produtos);


		response.sendRedirect("views/compras/carrinho.jsp");
	}

}
