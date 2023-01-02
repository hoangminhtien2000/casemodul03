package controller;

import dao.DAO;
import model.ProductDetail;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/detail")
public class ProductDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("pid");
        DAO dao = new DAO();
        ProductDetail p = dao.getProductByID(id);
        req.setAttribute("detail",p);
        //lay ra danh sach size cua san pham
        //lay ra danh sach mau cua san pham
        req.getRequestDispatcher("/front_end/productsDetails.jsp").forward(req,resp);

    }
}
