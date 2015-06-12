require "rails_helper"

describe Note, type: "model" do
  describe "validations" do
    it { should belong_to(:user) }
    it { should belong_to(:candidate) }
    it { should validate_presence_of(:comment) }
    it { should validate_presence_of(:note_type) }
    it { should validate_length_of(:comment).is_at_least(10).is_at_most(2000) }
  end
end
