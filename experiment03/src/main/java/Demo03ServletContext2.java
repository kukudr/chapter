import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Properties;

/**
 * @author 史帅杰
 * @date 2023-02-23
 * @Description
 */
@WebServlet("/MyInfo2")
public class Demo03ServletContext2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext=this.getServletContext();
        InputStream inputStream=servletContext.getResourceAsStream("/WEB-INF/myinfo.properties");
        Properties properties=new Properties();
        properties.load(inputStream);
        String stuName=properties.getProperty("stu-name");
        String stuNumber=properties.getProperty("stu-number");
        String major=properties.getProperty("major");
        String grade=properties.getProperty("grade");
        String password=properties.getProperty("password");
        PrintWriter writer=resp.getWriter();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json;charset=utf-8");

        writer.write("stu-name="+stuName+"123");
        writer.write("stu-number="+stuNumber);
        writer.write("major="+major);
        writer.write("grade="+grade);
        writer.write("password="+password);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
