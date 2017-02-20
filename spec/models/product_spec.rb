require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe Product, type: :model do
   context "Validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_presence_of(:category) }
  end

  context "description" do
  	
  	before do
  	@cool_tings = Category.create(name: 'No Name Brand')
  	end

  it "should describe product" do
   @product = Product.create(name: "Salad Spinner", price: 1999, quantity: 6, category: @cool_tings)
   expect(@product.description).to eq("Salad Spinner 1999.00 6 No Name Brand")
  end
 end
end


# validates :name, presence: true
# validates :price, presence: true
# validates :quantity, presence: true
# validates :category, presence: true