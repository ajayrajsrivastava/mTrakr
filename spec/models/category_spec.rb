require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should belong_to :user }
  it { should have_many :transactions }
  it { should validate_presence_of :name }
  it { should validate_presence_of :kind }
  it { should validate_presence_of :user_id }
  it { should validate_inclusion_of(:kind).in_array(Category::KINDS) }

  let(:category) { create :category }

  it 'has a valid factory' do
    expect(category).to be_valid
  end
end
