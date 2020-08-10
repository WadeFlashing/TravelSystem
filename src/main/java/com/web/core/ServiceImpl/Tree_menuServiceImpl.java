package com.web.core.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.core.Entity.Attributes;
import com.web.core.Entity.Tree_menu;
import com.web.core.Mapper.Tree_menuMapper;
import com.web.core.Service.Tree_menuService;

@Service
public class Tree_menuServiceImpl implements Tree_menuService {

	@Autowired
	private Tree_menuMapper tree_menuMapper;
	
	@Override
	public List<Tree_menu> selectAll() {
		
		List<Tree_menu> list = tree_menuMapper.selectAll();
		for (Tree_menu tree_menu : list) {
			List<Tree_menu> listChildren =  tree_menuMapper.selectPid(tree_menu.getId());
			for (Tree_menu children : listChildren) {
				Attributes att = new Attributes();
				att.setFilename(children.getFilename());
				children.setAttributes(att);
			}
			tree_menu.setChildren(listChildren);
		}		
		return list;
	}

	@Override
	public List<Tree_menu> selectPid(int pid) {
		// TODO Auto-generated method stub
		return tree_menuMapper.selectPid(pid);
	}

}
