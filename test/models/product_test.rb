require 'test_helper'

class ProductTest < ActiveSupport::TestCase
	fixtures :products

	def new_product(img_url)
		return Product.new(title: 'Abc', description: "Give me one more chance.", price: 1, image_url: img_url)
	end

	test "product attributes must not be empty" do
  	product = Product.new
  	assert product.invalid?
  	assert product.errors[:title].any?
  	assert product.errors[:description].any?
  	assert product.errors[:price].any?
  	assert product.errors[:image_url].any?
	end

	test "product price must be positive" do 
		product = Product.new(title: "Product One", description: "lorem ipsum.", image_url: "xyz.jpg")

		product.price = -1
		assert product.invalid?
		assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

		product.price = 0
		assert product.invalid?
		assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

		product.price = 1
		assert product.valid?
	end

	test "image url is valid" do 
		valid_url = %w{ fred.gif fred.jpg fred.png FRED.Jpg FRED.JPG http://asb.123/do/re/mi/mj.gif }
		invalid_url = %w{ fred.doc fred.jpg.more fred.png/jpg }

		valid_url.each do |img_url|
			assert new_product(img_url).valid?, "#{img_url} shouldn't be invalid"
		end

		invalid_url.each do |img_url|
			assert new_product(img_url).invalid?, "#{img_url} shouldn't be valid"
		end
	end

	test "product is not valid without a unique title" do
		product = Product.new(title: products(:note8).title, description: 'yyy', price: 1, image_url: "fred.gif")

		assert product.invalid?
		assert_equal ["has already been taken"], product.errors[:title]
	end
end
