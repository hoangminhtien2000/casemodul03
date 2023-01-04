package controller;

import model.Warehouses;
import service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/createWarehouse")
public class CreateWarehouse extends HttpServlet {
    ProductService productService = new ProductService();
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setAttribute("ci", productService.getProduct());
//        RequestDispatcher requestDispatcher=req.getRequestDispatcher("/product/createImg.jsp" );
//        requestDispatcher.forward(req,resp);
//    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int product_id = Integer.parseInt(req.getParameter("product_id"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        productService.saveWarehouse(new Warehouses(product_id,quantity));
        resp.sendRedirect("/productList");
    }
}
