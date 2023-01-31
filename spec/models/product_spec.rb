require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "is valid with valid attributes" do
      @category_test = Category.new(name: 'fake')
      @product = Product.new(name: 'Name', price: 5550, quantity: 3, category: @category_test)
      expect(@product).to be_valid
    end
    it "is not valid without a name" do 
      @category_test = Category.new(name: 'fake')
      @product = Product.new(price: 5550, quantity: 3, category: @category_test)
      expect(@product).to_not be_valid
    end
    it "is not valid without a price" do
      @category_test = Category.new(name: 'fake')
      @product = Product.new(name: 'Name', quantity: 3, category: @category_test)
    end
    it "is not valid without a quantity" do
      @category_test = Category.new(name: 'fake')
      @product = Product.new(name: 'Name', price: 5550, category: @category_test)
      expect(@product).to_not be_valid
    end
    it "is not valid without a category" do
      @category_test = Category.new(name: 'fake')
      @product = Product.new(name: 'Name', price: 5550, quantity: 3)
      expect(@product).to_not be_valid
    end
  end
end