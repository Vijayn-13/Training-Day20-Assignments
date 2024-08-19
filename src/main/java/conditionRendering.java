import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/conditional_Rendering")
public class conditionRendering extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        boolean isLoggedIn;
        if(name==null || name.isEmpty()){
            isLoggedIn=false;
        }
        else{
            isLoggedIn=true;
        }
        req.setAttribute("name",name);
        req.setAttribute("isLoggedIn",isLoggedIn);
        RequestDispatcher rqd=req.getRequestDispatcher("resultIf.jsp");
        rqd.forward(req,resp);
    }
}
