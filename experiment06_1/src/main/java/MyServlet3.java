import domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
@WebServlet(name = "MyServlet3",urlPatterns = "/myServlet3")
public class MyServlet3 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //在request域中存值
        request.setAttribute("userName","张三");
        //在session域中存值
        request.getSession().setAttribute("userName","王五");
        //在application域中存值
        request.getServletContext().setAttribute("userName","赵六");
        request.getRequestDispatcher("/scope.jsp").forward(request,response);
    }
}
