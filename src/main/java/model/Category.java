package model;

public class Category {
    private int product_id;
    private String url_img;
    private String product_name;
    private double price;

    public Category(){

    }

    public Category(int product_id, String url_img, String product_name, double price) {
        this.product_id = product_id;
        this.url_img = url_img;
        this.product_name = product_name;
        this.price = price;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getUrl_img() {
        return url_img;
    }

    public void setUrl_img(String url_img) {
        this.url_img = url_img;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
