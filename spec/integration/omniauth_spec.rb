require "spec_helper"

describe "a user login", type: :feature do
  include Capybara::DSL

  it "Facebook button should lead to Facebook authentication page" do
    visit root_path

    click_link_or_button("Login with Facebook")

    expect(User.last.uid).to eq('123545')
    expect(current_path).to eq(thanks_path)
  end
end
