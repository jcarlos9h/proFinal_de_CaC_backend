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

import com.mysql.cj.Session;

/**
 * Servlet implementation class Actualizar
 */
@WebServlet("/actualizar")
public class Actualizar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Actualizar() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombreActualizado = request.getParameter("nombreActualizar");
		String emailActualizado = request.getParameter("emailActualizar");
		String passActualizada = request.getParameter("passActualizar");
		String telefActualizado = request.getParameter("telefonoActualizar");
		String direccionActualizada = request.getParameter("direccionActualizar");
		HttpSession session = request.getSession();
		int idUsuario = (int)session.getAttribute("id");
		
		RequestDispatcher dispacher = null;
		Connection coneccion = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			coneccion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_final_web?useSSL=false", "root","17av5751");
			final String SENTENCIA = "UPDATE usuario SET nombre_completo = ? , email = ? , contraseña = ? , telefono = ? , direccion = ?   WHERE id_Usuario = ?";
			
			PreparedStatement prepaSentencia = coneccion.prepareStatement(SENTENCIA);
			prepaSentencia.setString(1, nombreActualizado);
			prepaSentencia.setString(2, emailActualizado);
			prepaSentencia.setString(3, passActualizada);
			prepaSentencia.setString(4, telefActualizado);
			prepaSentencia.setString(5, direccionActualizada);
			prepaSentencia.setInt(6, idUsuario);
			
			int numeroEjecucion = prepaSentencia.executeUpdate();
			
			if(numeroEjecucion>0) {
				session.setAttribute("name", nombreActualizado);
				session.setAttribute("email", emailActualizado);
				session.setAttribute("telefono", telefActualizado);
				session.setAttribute("direccion", direccionActualizada);
				dispacher = request.getRequestDispatcher("index.jsp");
			}
			
			dispacher.forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			try {
				coneccion.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		
		
	}

}
