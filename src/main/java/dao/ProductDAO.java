package dao;

import model.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class ProductDAO {

    static Connection connection = ConnectionMySql.getConnection();

    public List<InforProduct> getAll() {
        List<InforProduct> inforProducts = new LinkedList<>();
        String sql = "SELECT products.product_id, products.product_name, imgs.url_img, products.price, warehouses.quantity, products.status,sizes.size_name,colors.color_name,types.type_name  \n" +
                "FROM imgs\n" +
                "JOIN products USING(product_id) \n" +
                "JOIN sizes USING(size_id)\n" +
                "JOIN colors USING(color_id)\n" +
                "JOIN types USING(type_id)\n" +
                "JOIN warehouses USING(product_id)\n" +
                "ORDER BY product_id";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int product_id = resultSet.getInt("product_id");
                String product_name = resultSet.getString("product_name");
                String url_img = resultSet.getString("url_img");
                double price = resultSet.getInt("price");
                int quantity = resultSet.getInt("quantity");
                int status = resultSet.getInt("status");
                String size_name = resultSet.getString("size_name");
                String color_name = resultSet.getString("color_name");
                String type_name = resultSet.getString("type_name");
                inforProducts.add(new InforProduct(product_id, product_name, url_img, price,quantity, status, size_name, color_name, type_name));
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return inforProducts;
    }

    public List<Products> getProduct() {
        List<Products> products = new LinkedList<>();
        String sql = "Select * from products";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int product_id = resultSet.getInt("product_id");
                String product_name = resultSet.getString("product_name");
                double price = resultSet.getDouble("price");
                int status = resultSet.getInt("status");
                int size_id = resultSet.getInt("size_id");
                int color_id = resultSet.getInt("color_id");
                int type_id = resultSet.getInt("type_id");
                products.add(new Products(product_id, product_name, price, status, size_id, color_id, type_id));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return products;
    }

    public List<Sizes> getSize() {
        List<Sizes> sizes = new LinkedList<>();
        String sql = "Select * from sizes";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int size_id = resultSet.getInt("size_id");
                String size_name = resultSet.getString("size_name");
                sizes.add(new Sizes(size_id, size_name));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return sizes;
    }

    public List<Colors> getColor() {
        List<Colors> colors = new LinkedList<>();
        String sql = "Select * from colors";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int color_id = resultSet.getInt("color_id");
                String color_name = resultSet.getString("color_name");
                colors.add(new Colors(color_id, color_name));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return colors;
    }

    public List<Types> getType() {
        List<Types> types = new LinkedList<>();
        String sql = "Select * from types";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int type_id = resultSet.getInt("type_id");
                String type_name = resultSet.getString("type_name");
                types.add(new Types(type_id, type_name));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return types;
    }

    public List<Imgs> getImg() {
        List<Imgs> imgs = new LinkedList<>();
        String sql = "Select * from imgs";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int img_id = resultSet.getInt("img_id");
                String url_img = resultSet.getString("url_img");
                int product_id = resultSet.getInt("product_id");
                imgs.add(new Imgs(img_id, url_img, product_id));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return imgs;
    }

    public Imgs findByIdImg(String url_img, int product_id) {
        String sql = "select * from imgs where url_img = and product_id =" + url_img + product_id;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            int img_id = resultSet.getInt("img_id");
            return new Imgs(img_id, url_img, product_id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Warehouses findByIdWarehouse(int quantity, int product_id) {
        String sql = "select * from warehouses where quantity = and product_id =" + quantity + product_id;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            int warehouse_id= resultSet.getInt("warehouse_id");
            return new Warehouses(warehouse_id, product_id, quantity);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Products findByIdProduct(int product_id) {
        String sql = "select * from products where product_id =" + product_id;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            String product_name = resultSet.getString("product_name");
            double price = resultSet.getDouble("price");
            int status = resultSet.getInt("status");
            int size_id = resultSet.getInt("size_id");
            int color_id = resultSet.getInt("color_id");
            int type_id = resultSet.getInt("type_id");
            return new Products(product_id, product_name, price, status, size_id, color_id, type_id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void deleteImg(String url_img, int product_id) {
        String sql = "delete from imgs where url_img ='"+url_img+"' and product_id ="  +product_id;
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteWarehouse(int quantity, int product_id) {
        String sql = "delete from warehouses where quantity = " + quantity + " and product_id = " + product_id;
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteProduct(int product_id) {
        String sql = "delete from products where product_id = " + product_id;
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}