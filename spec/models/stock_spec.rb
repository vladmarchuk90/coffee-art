require 'rails_helper'

RSpec.describe Stock, type: :model do
  let!(:product) { create(:product) }
  subject { create(:stock, product_id: product.id, quantity: '10.0'.to_d) }

  it { expect(subject.quantity).to eql '10.0'.to_d }

  it { expect(subject.increase_stock('1.0'.to_d).quantity).to eql '11.0'.to_d }
  it { expect(subject.decrease_stock('1.0'.to_d).quantity).to eql '9.0'.to_d }

  it { expect(subject).to validate_numericality_of(:quantity) }

  context 'checking errors' do
    it 'get error when negative stock' do

    end
  end
end
