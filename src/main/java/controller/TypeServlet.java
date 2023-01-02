package controller;

import dao.DAO;
import model.Category;
import model.Types;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/type")
public class TypeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String typeID = req.getParameter("type_id");
        DAO dao = new DAO();
        List<Category> list = dao.getAllProductByType_id(typeID);
        List<Types> listT = dao.getAllType();

        req.setAttribute("listP",list);
        req.setAttribute("listT",listT);
        req.getRequestDispatcher("/front_end/products.jsp").forward(req,resp);

    }
}
