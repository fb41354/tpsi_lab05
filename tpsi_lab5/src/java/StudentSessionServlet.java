import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "StudentSessionServlet", urlPatterns = {"/student"})
public class StudentSessionServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        
        //licznik
        Integer visitCounter = (Integer) session.getAttribute("visitCounter");
        if (visitCounter == null) visitCounter = 0;
        else visitCounter++;
        session.setAttribute("visitCounter", visitCounter);
        
        
        request.getRequestDispatcher("student.jsp").forward(request, response);
    }
   
}