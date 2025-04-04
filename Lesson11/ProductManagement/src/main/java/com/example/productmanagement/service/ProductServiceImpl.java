package com.example.productmanagement.service;

import com.example.productmanagement.model.Product;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ProductServiceImpl implements ProductService {
    private List<Product> products = new ArrayList<>();
    private int nextId = 1;

    public ProductServiceImpl() {
        products.add(new Product(nextId++, "Laptop", 1200, "High-performance laptop"));
        products.add(new Product(nextId++, "Smartphone", 800, "Latest smartphone model"));
        products.add(new Product(nextId++, "Tablet", 500, "Portable tablet device"));
    }

    @Override
    public List<Product> getAllProducts() {
        return products;
    }

    @Override
    public void addProduct(Product product) {
        product.setId(nextId++);
        products.add(product);
    }

    @Override
    public void updateProduct(Product product) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == product.getId()) {
                products.set(i, product);
                break;
            }
        }
    }

    @Override
    public void deleteProduct(int id) {
        products.removeIf(product -> product.getId() == id);
    }

    @Override
    public Product getProductById(int id) {
        return products.stream().filter(product -> product.getId() == id).findFirst().orElse(null);
    }

    @Override
    public List<Product> searchProducts(String keyword) {
        return products.stream()
                .filter(product -> product.getName().toLowerCase().contains(keyword.toLowerCase()))
                .collect(Collectors.toList());
    }
}