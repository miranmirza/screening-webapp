require "rails_helper"

describe User, type: "model" do
  describe "validations" do
    it { should have_many(:notes) }
    it { should have_many(:candidates) }
    it { should validate_presence_of(:firstname) }
    it { should validate_presence_of(:lastname) }
  end

  it "it has role of pending by default" do
    user = create(:user)

    expect(user.role).to eq("pending")
    expect(user.admin?).to be_falsey
    expect(user.guest?).to be_truthy
  end
end
