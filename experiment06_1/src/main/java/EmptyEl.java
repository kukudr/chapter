import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 史帅杰
 * @date 2023-03-16
 * @Description
 */
public class EmptyEl  extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List list =new ArrayList<>();
        List list2 =new ArrayList<>();
        list.add("11");
        req.getSession().setAttribute("list", list);
        req.getSession().setAttribute("list2", list2);
        req.getRequestDispatcher("/emptyEL.jsp").forward(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doGet(req, resp);
    }
}

