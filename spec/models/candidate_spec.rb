require "rails_helper"

describe Candidate, type: "model" do
  describe "validations" do
    it { should have_many(:notes) }
    it { should have_many(:users) }
    it { should validate_presence_of(:firstname) }
    it { should validate_length_of(:firstname).is_at_least(2).is_at_most(20) }
  end

  it "it has role of pending by default" do
    candidate = create(:candidate)

    expect(candidate.status).to eq("pending")
    expect(Candidate.pending.length).to eq(1)
  end
end
