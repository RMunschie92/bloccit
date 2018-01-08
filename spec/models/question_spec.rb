require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { question.create!(title: "Question title", body: "Question content", resolved:"false") }

  describe "attributes" do
    it "has a body attribute" do
      expect(question).to have_attributes(body: "Question content")
    end
  end
end
