package springmvc.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import springmvc.Model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create
	@Transactional
	public void CreateProduct(Product product)
	{
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	//get all products
	public List<Product> getProducts()
	{
		List<Product> loadAll = this.hibernateTemplate.loadAll(Product.class);
		return loadAll;
	}
	
	//delete the single product
	@Transactional
	public void delete(int id)
	{
		Product load = this.hibernateTemplate.load(Product.class, id);
		this.hibernateTemplate.delete(load);
	}
	
	//get the single product
	public Product getProduct(int id)
	{
		return this.hibernateTemplate.get(Product.class, id);
	}
	
	
	

}
