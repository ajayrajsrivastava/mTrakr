module API  
  module V1
    class Transactions < Grape::API
      include API::V1::Defaults

      resource :transactions do
        get  do
          transaction = Transaction.all.where(user_id: current_user.id).to_json( include: { category: { only: :name } })         
          JSON.parse(transaction)
        end

        post do
          transaction = params[:transaction]
          Transaction.create!(user_id: current_user.id,
                              category_id: transaction[:category_id],
                              date: transaction[:date],
                              amount: transaction[:amount]
                              )
        end
 
      end


    end
  end
end  