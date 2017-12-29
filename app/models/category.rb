class Category < ApplicationRecord
  KINDS = %w( Expense Income )

  belongs_to :user
  has_many :transactions

  validates_presence_of :name, :kind, :user_id
  validates :kind, inclusion: { in: KINDS }

  default_scope { order :name }
  
end