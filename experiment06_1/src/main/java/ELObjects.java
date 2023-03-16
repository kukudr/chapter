import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author 史帅杰
 * @date 2023-03-16
 * @Description
 */
public class ELObjects extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("username", "requestScope");
        req.getSession().setAttribute("username", "sessionScope");
        ServletContext servletContext = getServletContext();
        servletContext.setAttribute("username", "applicationScope");

        req.getRequestDispatcher("/ELObjects.jsp").forward(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
