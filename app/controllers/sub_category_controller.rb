class SubCategoryController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]
    def index 
        subcategory = SubCategory.all
        render json:  subcategory
      end 
    
      def show 
        subcategory = SubCategory.find(params[:id])
        render json: subcategory
      end
    
      
      def create 
         subcategory = SubCategory.new(sub_category_params)
          if subcategory.save 
          render json: subcategory, status: :created
        else 
          render json: { errors: category.errors.full_messages }, status: :unprocessable_entity
        end 
      end 
    
      def update 
        subcategory = SubCategory.find(params[:id])
        if subcategory.update(sub_category_params)
          render json: subcategory
        else 
          render json: { errors: category.errors.full_messages }, status: :unprocessable_entity
        end
      end
    
      private 
      def sub_category_params 
        params.require(:subcategory).permit(:name,:category_id)
      end 
    end
    