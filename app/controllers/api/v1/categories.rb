module API  
  module V1
    class Categories < Grape::API
      include API::V1::Defaults

      resource :categories do
        
        #INDEX
        get do
          Category.all.where(user_id: current_user.id)
        end

        #CREATE
        post do
          category = params[:category]
          Category.create!(user_id: current_user.id,
                           name: category[:name],
                           kind: category[:kind],
                          )
        end
      
        #DESTROY
        delete do
          Category.destroy(params[:id])
        end

        #UPDATE
        put do
          category = Category.find(params[:id])
          category.update_attributes!(params[:category])
        end

      end


    end
  end
end  