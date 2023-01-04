package controller;

import model.Imgs;
import model.Products;
import model.Warehouses;
import service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/createProduct")
public class CreateProduct extends HttpServlet {
    ProductService productService = new ProductService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("utf-8");
        String product_name = req.getParameter("product_name");
        Double price= Double.parseDouble(req.getParameter("price"));
        int size_id = Integer.parseInt(req.getParameter("size_id"));
        int color_id = Integer.parseInt(req.getParameter("color_id"));
        int type_id = Integer.parseInt(req.getParameter("type_id"));
        String url_img = req.getParameter("url_img");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        long product_id = productService.saveProduct(new Products(product_name, price, size_id, color_id, type_id));
        productService.saveImg(new Imgs( url_img,Integer.parseInt(product_id + "")));
        productService.saveWarehouse(new Warehouses(Integer.parseInt(product_id + ""),quantity));
        resp.sendRedirect("/productList");
    }
}
