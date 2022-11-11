package egovframework.example.board.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardController {
	
	@RequestMapping(value = "/list.do") 
	public String list(ModelMap model) throws Exception {
		
		return "board/list";
		
	}
	
	@RequestMapping(value = "/mgmt.do") 
	public String mgmt(ModelMap model) throws Exception {
		
		return "board/mgmt";
		
	}
	
	@RequestMapping(value = "/view.do") 
	public String view(ModelMap model) throws Exception {
		
		return "board/view";
		
	}
	
	@RequestMapping(value = "/login.do") 
	public String login(@RequestParam("user_id") String user_id, @RequestParam("password") String password,
			ModelMap model, HttpServletRequest request) throws Exception {
		
		System.out.println("user_id : " + user_id);
		System.out.println("password : " + password);
		
		return "board/list";
		
	}

}
