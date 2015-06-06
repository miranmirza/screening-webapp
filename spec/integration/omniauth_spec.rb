require "spec_helper"

describe "a user login", type: :feature do
  include Capybara::DSL

  it "Facebook button should lead to Facebook authentication page" do
    visit root_path
    within ".centered" do
      click_link('Login with Facebook', :match => :first)
    end

    expect(User.last.uid).to eq('123545')
    expect(current_path).to eq(thanks_path)
  end
end
