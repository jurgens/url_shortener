require 'spec_helper'

describe "urls/edit" do
  before(:each) do
    @url = assign(:url, stub_model(Url,
      :url_long => "MyString",
      :private => false,
      :password_digest => "MyString"
    ))
  end

  it "renders the edit url form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", url_path(@url), "post" do
      assert_select "input#url_url_long[name=?]", "url[url_long]"
      assert_select "input#url_private[name=?]", "url[private]"
      assert_select "input#url_password_digest[name=?]", "url[password_digest]"
    end
  end
end
