package model;

import java.util.List;

import dao.ProductDAO;

public class ProductLogic {

    public List<Product> findALLProducts(){
        ProductDAO daoProduct = new ProductDAO();
        List<Product> productList = daoProduct.findAllProducts();
        return productList;
    }


}
