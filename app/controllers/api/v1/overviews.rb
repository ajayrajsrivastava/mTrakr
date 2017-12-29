module API  
  module V1
    class Overviews < Grape::API
      include API::V1::Defaults

      resource :overviews do
        
        #INDEX
        get  do
          total_income  = 0
          total_expense = 0

          Transaction.all.where(user_id: current_user.id).each do |transaction|
            if transaction.category.kind == 'Income'
              total_income += transaction.amount
            else
              total_expense += transaction.amount
            end 
          end
          total = Hash.new
          total[:income]  = total_income
          total[:expense] = total_expense
          total
        end

 
      end


    end
  end
end  