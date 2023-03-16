import domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "MyServlet2",urlPatterns = "/myServlet2")
public class MyServlet2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<User> users = new ArrayList<>();
        users.add(new User("zhangsan",18));
        users.add(new User("lisi",19));
        request.setAttribute("users",users);
        request.getRequestDispatcher("/myparameter.jsp").forward(request,response);
    }
}
