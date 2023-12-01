package springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import springmvc.Dao.ProductDao;
import springmvc.Model.Product;

@Controller
public class MianController {
	
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public String Home(Model m)
	{
		List<Product> products = productDao.getProducts();
		m.addAttribute("products",products);
		return "index";
	}
	
	//show add product form
	@RequestMapping("/addproduct")
	public String AddProduct(Model m)
	{
		m.addAttribute("title", "ADD PRODUCT");
		return "addproduct";
	}
	
	//handle form
	@RequestMapping(value = "/submit",method = RequestMethod.POST)
	public RedirectView HandleProduct(@ModelAttribute Product product,HttpServletRequest request)
	{
		System.out.println(product);
		this.productDao.CreateProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+ "/");
		return redirectView;
	}
	
	//to delete handler
	@RequestMapping("/delete/{id}")
	public RedirectView DeleteProduct(@PathVariable("id")int id,HttpServletRequest request)
	{
		this.productDao.delete(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+ "/");
		return redirectView;
	}
	
	//update handler
	@RequestMapping("/update/{id}")
	public String UpdateForm(@PathVariable("id")int id, Model model)
	{
		Product product = this.productDao.getProduct(id);
		model.addAttribute("product", product);
		return "updateform";
	}
	
	

}
