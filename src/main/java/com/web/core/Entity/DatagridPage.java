package com.web.core.Entity;

import java.util.List;

public class DatagridPage {

	private List<?> rows;
	private int total;
	
	public DatagridPage() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<?> getRows() {
		return rows;
	}

	public void setRows(List<?> rows) {
		this.rows = rows;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
}
