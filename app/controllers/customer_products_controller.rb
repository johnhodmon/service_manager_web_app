class CustomerProductsController < ApplicationController

	def create

		@customer_product = CustomerProduct.new(customer_product_params)
		if @customer_product.save
      
		redirect_to customer_path(id:params[:customer_id])
	

	end

	end
	def destroy
	CustomerProduct.find(params[:id]).destroy	

    redirect_to customer_path(id:params[:customer_id])
end
	 def customer_product_params
      params.require(:customer_product).permit(:product_id, :customer_id, :serial_number)
    end
end
