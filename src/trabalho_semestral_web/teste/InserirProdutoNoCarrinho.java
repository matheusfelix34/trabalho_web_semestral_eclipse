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

import model.Produto;

/**
 * Servlet implementation class InserirProdutoNoCarrinho
 */
@WebServlet("/InserirProdutoNoCarrinho")
public class InserirProdutoNoCarrinho extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InserirProdutoNoCarrinho() {
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
		
		String nome = request.getParameter("nome");
		Double preco = Double.parseDouble(request.getParameter("preco"));
		Produto p = new Produto(nome, preco);

		if(sessao.getAttribute("lstProdutos") == null) {
			List<Produto> produtos = new ArrayList<>();
			produtos.add(p);

			sessao.setAttribute("lstProdutos", produtos);

			out.println("<h1>Produto adicionado ao carrinho!<h1><br><br>");
		}else {
			List<Produto> produtos = (List<Produto>) sessao.getAttribute("lstProdutos");
			
			produtos.add(p);

			sessao.setAttribute("lstProdutos", produtos);


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
