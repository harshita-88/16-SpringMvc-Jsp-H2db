package in.harshita.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import in.harshita.entity.Product;
import in.harshita.repository.ProductRepository;

@Controller
public class ProductController {
	@Autowired
	private ProductRepository repo;
	
	@GetMapping("/products")
	public String loadData(Model model) {
		model.addAttribute("products", repo.findAll());
		return"data";
	}
	
	@GetMapping("/")
	public String getData(Model model) {
		model.addAttribute("product", new Product());
		return "index";		
	}
	
	@PostMapping("/product")
	public String handleSubmit(Product product,Model model) {
		product = repo.save(product);
		if(product.getPid() != null) {
			model.addAttribute("msg", "data sucessfully added");
		}	
		return "index";
	}

}
