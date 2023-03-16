import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

//购物车
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=utf-8");

        //从session域中取出cart对象
        HttpSession session = req.getSession();
        List<Cake> cart = (List<Cake>) session.getAttribute("cart");
        //判断购物车是否为空
        if (cart.isEmpty()){//空则重定向蛋糕展示列表
            resp.sendRedirect("/experiment04/ListCakeServlet");
        }else {//不为空，向页面输出购买的蛋糕
            PrintWriter writer = resp.getWriter();
            writer.write("2003605048:马乾华<br>");
            writer.write("您购物车的蛋糕有：<br>");
            for (Cake cake : cart) {//遍历购物车内的所有蛋糕
                writer.write(cake.getName()+"<br>");
            }
        }
    }
}
