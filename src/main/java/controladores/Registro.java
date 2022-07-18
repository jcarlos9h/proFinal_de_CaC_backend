
package controladores;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/registro")
public class Registro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("NameRegistro");
		String uemail = request.getParameter("EmailRegistro");
		String upwd = request.getParameter("passwordRegistro");
		String utelefono = request.getParameter("telefono");
		String uDireccion = request.getParameter("direccion");
		
	    RequestDispatcher disp = null;
		Connection con=null;

		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			// conexion a la bdd. IMPORTANTE => Cambiar los datos segun sus datos de la
			// siguiente forma:
			// jdbc:mysql://localhost:3306/NOMBREBASEDEDATOS?useSSL=false", "USUARIO",
			// "CONTRASEÑA");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_final_web?useSSL=false", "root",
					"17av5751");
			System.out.println(con);
			final String STATEMENT = "insert into usuario (nombre_completo, email, contraseña,telefono,direccion) values (?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(STATEMENT);
			pst.setString(1, uname);
			pst.setString(2, uemail);
			pst.setString(3, upwd);
			pst.setString(4, utelefono);
			pst.setString(5, uDireccion);

//			 en rowCount guardamos un valor entero de la cantidad de registros
//			 modificados/agregados
//			 ademas mediante el metodo executeUpdate() ejecutamos la insercion de datos a
//			 la tabla usuario realizada previamente
			int rowCount = pst.executeUpdate();

			// al realizar el metodo post se direcciona a index.jsp
			disp = request.getRequestDispatcher("index.jsp");

			if (rowCount > 0) {
//				request.setAttribute("name", "success");
			} else {
				request.setAttribute("status", "failed");
			}

			disp.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

}

