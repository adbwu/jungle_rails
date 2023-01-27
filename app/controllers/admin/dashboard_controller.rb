class Admin::DashboardController < AdminController
  def show
  end

  def index
  end

  def product_count
    Product.count
  end

  def category_count
    Category.count
  end

  def sold_out_products
  end 

end
