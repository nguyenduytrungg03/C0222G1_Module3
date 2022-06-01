package service.impl;

import model.Product;
import repository.IProductRepository;
import repository.impl.ProductRepository;
import service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    IProductRepository iProductRepository = new ProductRepository();

    @Override
    public List<Product> findAll() {
        return iProductRepository.findAll();
    }

    @Override
    public Product findById(int id) {
        return iProductRepository.findById(id);
    }

    @Override
    public void create(Product product) {
        iProductRepository.create(product);
    }


    @Override
    public void delete(int id) {

    }

    @Override
    public void update(Product product) {
        iProductRepository.update(product);
    }
}
