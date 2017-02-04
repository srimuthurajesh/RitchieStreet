package com.niit.DAO;

import java.util.List;

import com.niit.entityModel.CategoryModel;

public interface CategoryDAO {
	public boolean addCategory(CategoryModel category);

	public boolean deleteCategory(String categoryId);

	public List<CategoryModel> getCategoryList();

	public CategoryModel getById(String username);

    public void saveOrUpdate(CategoryModel categoryModel);

    public CategoryModel getByName(String name);
}
