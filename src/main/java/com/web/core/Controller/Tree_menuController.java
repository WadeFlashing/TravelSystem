package com.web.core.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.core.Entity.Tree_menu;
import com.web.core.Service.Tree_menuService;

@Controller
public class Tree_menuController {

	@Autowired
	private Tree_menuService tree_menuService;
	
	@RequestMapping("showMenu")
	@ResponseBody
	public List<Tree_menu> showMenu(){
		return tree_menuService.selectAll();
	}
	
}
