import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "IndexServlet",urlPatterns = "/IndexServlet")
public class IndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter writer = response.getWriter();
        //验证用户是否登录
        HttpSession session = request.getSession();
        //用户对象放入在session域中，此时要取出，通过对取出的user对象判断是否为空确定是否登录
        User user = (User) session.getAttribute("user");
        writer.write("2003605048:马乾华");
        if (user == null) {//没有登录，跳转到登录页面，login.html
            String url = "/login/login.html";
            writer.write("您还未登录，<a href='"+url+"'>请登录</a>");
            //response.sendRedirect("/login/login.html");
        }else {//登录，提示登录成功，欢迎XX
            writer.write("欢迎"+user.getUserName()+"登录成功！");
            writer.write("<a href='/login/LoginOutServlet'>退出登录</a>");
        }
    }
}
