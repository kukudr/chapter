import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet",urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");
        //获取前端参数
        PrintWriter writer =response.getWriter();
        writer.write("2003605048:马乾华");
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        if ("ZHang".equals(userName)&&"123".equals(password)) {//登录成功，将user对象存入session域中
            HttpSession session = request.getSession();
            session.setAttribute("user",new User(userName,password));
            //session持久化
            Cookie cookie = new Cookie("JSESSIONID",session.getId());
            cookie.setMaxAge(60*30);
            cookie.setPath("/");
            response.addCookie(cookie);
            response.sendRedirect("/login/IndexServlet");
        }else {//登录失败
            response.getWriter().write("用户名或密码错误！");
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
