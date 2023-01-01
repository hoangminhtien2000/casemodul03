package service;

import dao.ProductDAO;
import model.*;

import java.util.List;

public class ProductService {
    ProductDAO productDAO = new ProductDAO();

    public List<Products> getProduct() {
        return productDAO.getProduct();
    }

    public List<Sizes> getSizes() {
        return productDAO.getSize();
    }

    public List<Colors> getColor() {
        return productDAO.getColor();
    }

    public List<Types> getType() {
        return productDAO.getType();
    }

    public List<Img> getImg()  {
        return productDAO.getImg();
    }

}
