require 'rails_helper'

RSpec.describe Author do
  describe 'validations' do
    it {should validate_presence_of :name}
  end

  xdescribe 'relationships' do
    it {should have_many :books}
  end
end