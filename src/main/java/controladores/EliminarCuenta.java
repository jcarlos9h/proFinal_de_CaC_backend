package controladores;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Usuario;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class EliminarCuenta
 */
@WebServlet("/eliminar")
public class EliminarCuenta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EliminarCuenta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		RequestDispatcher dispacher = null;		
		Connection coneccion = null;
		
		int idUsuario= (int)session.getAttribute("id");
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			coneccion= DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/proyecto_final_web?useSSL=false","root","17av5751");
			
			final String SENTENCIA = "DELETE  FROM usuario WHERE id_Usuario = ?";
			PreparedStatement prepaSentencia = coneccion.prepareStatement(SENTENCIA);
			prepaSentencia.setInt(1, idUsuario);
			
			int rowCont = prepaSentencia.executeUpdate();
			
	
			
			if(rowCont>0) {	
				session.setAttribute("name", null);
				response.sendRedirect("login.jsp");
			}else {
				request.setAttribute("status", "failed");
					
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			try {
				coneccion.close();
			} catch (SQLException e) {
				// TODO Bloque catch generado automáticamente
				e.printStackTrace();
			}
		}
	}

}
