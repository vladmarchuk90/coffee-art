require 'rails_helper'

RSpec.describe Dish, type: :model do
  subject { create(:dish, menu_id: 1 locked: '10.0'.to_d, balance: '10.0') }

  it { expect(subject.amount).to be_d '20' }
  it { expect(subject.plus_funds('1.0'.to_d).balance).to eql '11.0'.to_d }
  it { expect(subject.unlock_funds('1.0'.to_d).locked).to eql '9.0'.to_d }
  it { expect(subject.unlock_funds('1.0'.to_d).balance).to eql '11.0'.to_d }
  it { expect(subject.lock_funds('1.0'.to_d).locked).to eql '11.0'.to_d }
  it { expect(subject.lock_funds('1.0'.to_d).balance).to eql '9.0'.to_d }
end
