class CategoryController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]
    def index
           @categories = Category.page(params[:page]).per(params[:per_page])
        
        render json: @categories
      end 
    
      def show 
        category = Category.find(params[:id])
        render json: category
      end
    
      
      def create 
        category = Category.new(category_params)
        if category.save 
          render json: category, status: :created
        else 
          render json: { errors: category.errors.full_messages }, status: :unprocessable_entity
        end 
      end 
    
      def update 
        category = Category.find(params[:id])
        if category.update(category_params)
          render json: category
        else 
          render json: { errors: category.errors.full_messages }, status: :unprocessable_entity
        end
      end
    
      private 
      def category_params 
        params.require(:category).permit(:name, :title)
      end 
    end
    