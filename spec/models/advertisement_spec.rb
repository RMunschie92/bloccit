require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "Advertisement title", copy: "Advertisement copy", price: 0 ) }

  describe "attributes" do
    it "has body, copy, and price attributes" do
      expect(advertisement).to have_attributes(title: "Advertisement title", copy: "Advertisement copy", price: 0 )
    end
  end
end
