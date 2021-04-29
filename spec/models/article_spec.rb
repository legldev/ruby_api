require "rails_helper"

RSpec.describe Article, type: :model do
  describe "#validations" do
    let(:article) { build(:article) }
    it "has an invalid title" do
      article.title = ""
      expect(article).not_to be_valid
      expect(article.errors[:title]).to include("can't be blank")
    end
  end
end
