class Admin::DashboardController < ApplicationController
  
  def index
  	@category = Category.all
  end
  
  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:category).permit(
      :name
    )
  end

end
