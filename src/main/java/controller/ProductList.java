package controller;

import model.Account;
import model.InforProduct;
import model.Products;
import service.AccountService;
import service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/productList")
public class ProductList extends HttpServlet {
    ProductService productService= new ProductService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("Inforproducts", productService.getAll());
        RequestDispatcher dispatcher = req.getRequestDispatcher("/product/products.jsp");
        dispatcher.forward(req, resp);
    }
}