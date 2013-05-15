require 'spec_helper'

describe "urls/show" do
  before(:each) do
    @url = assign(:url, stub_model(Url,
      :url_long => "Url Long",
      :private => false,
      :password_digest => "Password Digest"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url Long/)
    rendered.should match(/false/)
    rendered.should match(/Password Digest/)
  end
end
