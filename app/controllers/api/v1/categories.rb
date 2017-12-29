module API  
  module V1
    class Categories < Grape::API
      include API::V1::Defaults

      resource :categories do
        get do
          Category.all.where(user_id: current_user.id)
        end

        
        post do
          category = params[:category]
          Category.create!(user_id: current_user.id,
                           name: category[:name],
                           kind: category[:kind],
                          )
        end
      
        delete do
          Category.destroy(params[:id])
        end

        

      end


    end
  end
end  