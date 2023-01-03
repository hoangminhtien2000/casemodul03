package service;

import dao.ProductDAO;
import model.*;

import java.util.List;

public class ProductService {
    ProductDAO productDAO = new ProductDAO();

    public List<InforProduct> getAll() {
        return productDAO.getAll();
    }

    public boolean saveImg(Imgs imgs) {
        return productDAO.saveImg(imgs);
    }

    public boolean saveWarehouse(Warehouses warehouses) {
        return productDAO.saveWarehouse(warehouses);
    }

    public boolean saveProduct(Products product) {
        return productDAO.saveProduct(product);
    }

    public List<Products> getProduct() {
        return productDAO.getProduct();
    }

//    public List<Sizes> getSizes() {
//        return productDAO.getSize();
//    }
//
//    public List<Colors> getColor() {
//        return productDAO.getColor();
//    }
//
//    public List<Types> getType() {
//        return productDAO.getType();
//    }
//
//    public List<Imgs> getImg() {
//        return productDAO.getImg();
//    }

    public Imgs findByIdImg(String url_img, int product_id) {
        return productDAO.findByIdImg(url_img, product_id);
    }

    public Warehouses findByIdWarehouse(int quantity, int product_id) {
        return productDAO.findByIdWarehouse(quantity, product_id);
    }

    public Products findByIdProduct(int product_id) {
        return productDAO.findByIdProduct(product_id);
    }

    public void deleteImg(String url_img, int product_id) {
        productDAO.deleteImg(url_img, product_id);
    }

    public void deleteWarehouse(int warehouse_id, int product_id) {
        productDAO.deleteWarehouse(warehouse_id, product_id);
    }

    public void deleteProduct(int product_id) {
        productDAO.deleteProduct(product_id);
    }

}
