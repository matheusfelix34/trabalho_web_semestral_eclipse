package trabalho_semestral_web.teste;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginSessao1
 */
@WebServlet("/LoginSessao1")
public class LoginSessao1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginSessao1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String user = "";
		String senha = "";
		
		
		if(request.getParameter("user") != null && !request.getParameter("user").equals("")) {
			user = request.getParameter("user");
		}
		
		if(request.getParameter("senha") != null && !request.getParameter("senha").equals("")) {
			senha = request.getParameter("senha");
		}
		

		HttpSession sess = request.getSession();
		sess.setAttribute("atributoNome", user);
		sess.setAttribute("atributoEmail", senha);
		
		

		Cookie cookAux = new Cookie("cookieNome", user);
		cookAux.setMaxAge(60 * 60 * 24 * 2);
		response.addCookie(cookAux);
		
		
		response.sendRedirect("views/loja/index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
