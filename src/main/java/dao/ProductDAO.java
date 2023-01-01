package dao;

import model.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class ProductDAO {

    static Connection connection = ConnectionMySql.getConnection();

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

    public List<Img> getImg() {
        List<Img> imgs = new LinkedList<>();
        String sql = "Select * from imgs";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int img_id = resultSet.getInt("img_id");
                String url_img = resultSet.getString("url_img");
                int product_id = resultSet.getInt("product_id");
                imgs.add(new Img(img_id, url_img,product_id));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return imgs;
    }



}