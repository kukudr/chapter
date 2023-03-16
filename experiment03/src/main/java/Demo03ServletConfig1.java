import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

/**
 * @author 史帅杰
 * @date 2023-02-23
 * @Description
 */
@WebServlet("/MyInfo1")
public class Demo03ServletConfig1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ServletConfig servletConfig=this.getServletConfig();
        Enumeration enumeration=servletConfig.getInitParameterNames();
        while (enumeration.hasMoreElements()){
            resp.setCharacterEncoding("GBK");
            String name=(String)enumeration.nextElement();
            String value=servletConfig.getInitParameter(name);
            resp.getWriter().write(name+":"+value+"\n");
            System.out.println(name+":"+value);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
