package dao;

import model.Category;
import model.ProductDetail;
import model.Products;
import model.Types;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Category> getAllProduct(){
        List<Category> list = new ArrayList<>();
        String query = "SELECT  products.product_id,url_img, product_name,price " +
                "FROM products JOIN imgs on products.product_id = imgs.product_id";

        try{
            conn = ConnectionMySQL.getConnection();//ket noi vs sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4)));
            }

        }catch (Exception e){

        }
        return list;
    }


    public List<Category> getAllProductByType_id(String type_id){
        List<Category> list = new ArrayList<>();
        String query = "SELECT products.product_id, url_img, product_name,price \n" +
                "FROM products JOIN types on products.type_id = types.type_id\n" +
                "\t\t\tJOIN   imgs on products.product_id = imgs.img_id\n" +
                "WHERE products.type_id =?";

        try{
            conn = ConnectionMySQL.getConnection();//ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1,type_id);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4)));
            }

        }catch (Exception e){

        }
        return list;
    }

    public ProductDetail getProductByID(String id){
        String query ="SELECT  products.product_id,product_name, url_img, color_name,price ,size_name,quantity\n" +
                "FROM products JOIN types on products.type_id = types.type_id\n" +
                "\t\t\tJOIN   imgs on products.product_id = imgs.img_id\n" +
                "            JOIN  sizes on sizes.size_id = products.size_id\n" +
                "            JOIN warehouses on warehouses.product_id = products.product_id\n" +
                "            JOIN colors on colors.color_id = products.color_id\n" +
                "WHERE products.product_id =?";

        try{
            conn = ConnectionMySQL.getConnection();//ket noi vs sql
            ps = conn.prepareStatement(query);
            ps.setString(1,id);
            rs = ps.executeQuery();
            while (rs.next()){
                return new ProductDetail(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getInt(7));
            }

        }catch (Exception e){

        }
        return null;

    }


    public List<Types> getAllType(){
        List<Types> list = new ArrayList<>();
        String query ="SELECT*FROM types";

        try{
            conn = ConnectionMySQL.getConnection();//ket noi vs sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Types(rs.getInt(1),rs.getString(2)));
            }

        }catch (Exception e){

        }
        return list;
    }
//    public static void main(String[] args) {
//        DAO dao = new DAO();
//        List<Category> list = dao.getAllProduct();
//        for(Category o:list){
//            System.out.println(o);
//        }
//
//    }

}
