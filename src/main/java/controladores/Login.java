package controladores;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String usuarioEmail = request.getParameter("usuarioEmail");
		String usuarioPass = request.getParameter("usuarioPass");
		HttpSession session = request.getSession();
		RequestDispatcher disp = null;
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection coneccion= DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_final_web?useSSL=false", "root","21306336.Ff,");
			final String SENTENCIA = "SELECT * FROM usuario WHERE email=? and contraseña=?";
			PreparedStatement prepaSentencia = coneccion.prepareStatement(SENTENCIA);
			prepaSentencia.setString(1, usuarioEmail);
			prepaSentencia.setString(2, usuarioPass);
			ResultSet resultSet = prepaSentencia.executeQuery();
			
//			disp = request.getRequestDispatcher("index.jsp");
			
			if(resultSet.next()) {	
				session.setAttribute("name", resultSet.getString(1));
				disp = request.getRequestDispatcher("index.jsp");
			}else {
				request.setAttribute("status", "failed");
				disp= request.getRequestDispatcher("login.jsp");
				
			}
			
			disp.forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		finally {
			
		}
		
		
		
	}

}
