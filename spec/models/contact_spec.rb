require 'rails_helper'

RSpec.describe Contact, type: :model do
  subject(:contact) { Contact.create!(full_name: "John Doe",
                                      email: "test@test.com",
                                      message: "Random message") }

  describe 'validations' do
    it { expect(contact).to be_valid }
    it { expect(contact).to validate_presence_of(:full_name) }
    it { expect(contact).to validate_presence_of(:email) }
    it { expect(contact).to validate_presence_of(:message) }
  end
end
