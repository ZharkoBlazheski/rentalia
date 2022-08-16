# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:User) do
    described_class.create!(first_name: 'Zharko',
                            last_name: 'Blazheski',
                            phone: '071 298 228',
                            address: 'Velgoshti')

    describe 'validations' do
      it { expect(described_class).to be_valid }
      it { expect(described_class).to validate_presence_of(:first_name) }
      it { expect(described_class).to validate_presence_of(:last_name) }
      it { expect(described_class).to validate_presence_of(:phone) }
      it { expect(described_class).to validate_presence_of(:address) }
    end
  end
end
