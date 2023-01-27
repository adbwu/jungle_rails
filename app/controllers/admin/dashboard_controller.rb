class Admin::DashboardController < AdminController

  def show
    @products_count = Product.count
    @categories_count = Category.count
  end
end
