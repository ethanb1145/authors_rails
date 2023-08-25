require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'validations' do
    it {should have_many(:books)}
  end
end