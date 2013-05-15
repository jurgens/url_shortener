require 'spec_helper'

describe "urls/new" do
  before(:each) do
    assign(:url, stub_model(Url,
      :url_long => "MyString",
      :private => false,
      :password_digest => "MyString"
    ).as_new_record)
  end

  it "renders new url form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", urls_path, "post" do
      assert_select "input#url_url_long[name=?]", "url[url_long]"
      assert_select "input#url_private[name=?]", "url[private]"
      assert_select "input#url_password_digest[name=?]", "url[password_digest]"
    end
  end
end
