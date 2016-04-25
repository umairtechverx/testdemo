class PvarientsController < ApplicationController

	def create
    @product = Product.find(params[:product_id])
    @pvarient = @product.pvarients.create(pvarient_params)
    redirect_to product_path(@product)
  end
  
 def destroy
    @product = Product.find(params[:product_id])
    @pvarient = @product.pvarients.find(params[:id])
    @pvarient.destroy
    redirect_to product_path(@product)
  end
  private
    def pvarient_params
      params.require(:pvarient).permit(:colour, :size, :warrenty, :style, :image)
    end

end
