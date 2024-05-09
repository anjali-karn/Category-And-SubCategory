ActiveAdmin.register Category do
    config.per_page = 2
    config.paginate = true # Enable pagination
    
    controller do
      def scoped_collection
          super.page(params[:page]).per(2)
        end
      end
    index do
      selectable_column
      id_column
      column :name
      column :title
      actions
    end
  
    filter :name
    filter :title
  
    form do |f|
      f.inputs do
        f.input :name
        f.input :title
      end
      f.actions
    end
end 