require 'rails_helper'

RSpec.describe User, type: :model do
  subject { build(:user) }
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with the same email' do
    user = create(:user)

    expect(build(:user, email: user.email)).to_not be_valid
  end
end
