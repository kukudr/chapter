import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
//展示蛋糕列表
@WebServlet("/PurchaseServlet")
public class PurchaseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=utf-8");
        //通过id查看是否有该商品
        String id = req.getParameter("id");
        //没有，则重定向到蛋糕展示列表
        Cake cake = CakeDB.getCakeById(id);
        if (cake == null) {
            resp.sendRedirect("/experiment04/ListCakeServlet");
            return;
        }
        //有，加入购物车
        //获取购物车，购物车就是一个list集合，存放到session中
        PrintWriter writer=resp.getWriter();
        writer.write("2003605048:马乾华<br>");
        HttpSession session = req.getSession();
        List<Cake> cart = (List) session.getAttribute("cart");
        //cart是否存在
        //不存在，创建购物车
        if (cart == null) {
            cart = new ArrayList<Cake>();
            session.setAttribute("cart",cart);
        }
        //无论存在与否，都要往购物车中，添加购买的蛋糕
        cart.add(cake);
        Cookie cookie = new Cookie("JSESSIONID",session.getId());
        //将session对应的ID持久化30分钟，目的是和session域中存储的对象持久的时间一致
        cookie.setMaxAge(60*30);
        cookie.setPath("/");
        resp.addCookie(cookie);
        //重定向购物车页面中
        resp.sendRedirect("/experiment04/CartServlet");
    }
}
