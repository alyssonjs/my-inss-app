require 'rails_helper'

RSpec.describe Collaborator, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:neighborhood) }
    it { is_expected.to validate_presence_of(:birthday) }
    it { is_expected.to validate_presence_of(:personal_phone_number) }
    it { is_expected.to validate_presence_of(:salary) }
    it { is_expected.to validate_presence_of(:inss) }
    it { is_expected.to validate_presence_of(:cpf) }
    it { is_expected.to validate_presence_of(:postal_code) }
    it { should validate_length_of(:postal_code)} 

  end

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end
end