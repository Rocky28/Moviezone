package p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "feedback", urlPatterns = {"/feedback"})
public class feedback extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        try {
            MovieDb ob=new MovieDb();
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String msg=request.getParameter("msg");
            ob.ps=ob.db.prepareStatement("insert into fback values(?,?,?)");
            ob.ps.setString(1, name);
            ob.ps.setString(2, email);
            ob.ps.setString(3, msg);
            int r=ob.ps.executeUpdate();
            response.sendRedirect("resfeedback.jsp");
        } catch (Exception ex) {
            Logger.getLogger(feedback.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
