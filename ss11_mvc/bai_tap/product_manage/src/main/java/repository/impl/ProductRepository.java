package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {

    public static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "Iphon12", 20000, "Máy mới", "Apple"));
        productList.add(new Product(2, "Samsung", 13000, "Máy Gaming", "Android"));
        productList.add(new Product(3, "AppleWatch-srB", 45000, "Máy mới", "Apple"));
        productList.add(new Product(4, "Oppo-A52", 13000, "Máy văn phòng", "Android"));

    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public Product findById(int id) {
        for (Product item: productList) {
            if (item.getId() == id){
                return item;
            }
        }
        return null;

    }

    @Override
    public void create(Product product) {
        productList.add(product);
    }

    @Override
    public void delete(int id) {


    }

    @Override
    public void update(Product product) {
        for (Product item:productList) {
            if (item.getId()== product.getId()){
                productList.set(productList.indexOf(item),product);
                break;
            }
        }
    }

    @Override
    public List<Product> search(String search) {
        return null;
    }
}
