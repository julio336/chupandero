require 'spec_helper'

describe "bars/new" do
  before(:each) do
    assign(:bar, stub_model(Bar,
      :name => "MyString",
      :logo => "MyString",
      :description => "MyText",
      :address => "MyText",
      :phone => "MyText",
      :horary => "MyText",
      :promo => "MyText",
      :image1 => "MyString",
      :image2 => "MyString"
    ).as_new_record)
  end

  it "renders new bar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bars_path, :method => "post" do
      assert_select "input#bar_name", :name => "bar[name]"
      assert_select "input#bar_logo", :name => "bar[logo]"
      assert_select "textarea#bar_description", :name => "bar[description]"
      assert_select "textarea#bar_address", :name => "bar[address]"
      assert_select "textarea#bar_phone", :name => "bar[phone]"
      assert_select "textarea#bar_horary", :name => "bar[horary]"
      assert_select "textarea#bar_promo", :name => "bar[promo]"
      assert_select "input#bar_image1", :name => "bar[image1]"
      assert_select "input#bar_image2", :name => "bar[image2]"
    end
  end
end
