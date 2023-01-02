package model;

public class ProductDetail {
    private int product_id;
    private String product_name;
    private String product_img;
    private String color_name;
    private double price;
    private String size_name;
    private int quantity;

    public ProductDetail() {

    }

    public ProductDetail(int product_id, String product_name, String product_img, String color_name, double price, String size_name, int quantity) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_img = product_img;
        this.color_name = color_name;
        this.price = price;
        this.size_name = size_name;
        this.quantity = quantity;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_img() {
        return product_img;
    }

    public void setProduct_img(String product_img) {
        this.product_img = product_img;
    }

    public String getColor_name() {
        return color_name;
    }

    public void setColor_name(String color_name) {
        this.color_name = color_name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getSize_name() {
        return size_name;
    }

    public void setSize_name(String size_name) {
        this.size_name = size_name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
