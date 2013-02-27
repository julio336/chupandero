require 'spec_helper'

describe "bars/index" do
  before(:each) do
    assign(:bars, [
      stub_model(Bar,
        :name => "Name",
        :logo => "Logo",
        :description => "MyText",
        :address => "MyText",
        :phone => "MyText",
        :horary => "MyText",
        :promo => "MyText",
        :image1 => "Image1",
        :image2 => "Image2"
      ),
      stub_model(Bar,
        :name => "Name",
        :logo => "Logo",
        :description => "MyText",
        :address => "MyText",
        :phone => "MyText",
        :horary => "MyText",
        :promo => "MyText",
        :image1 => "Image1",
        :image2 => "Image2"
      )
    ])
  end

  it "renders a list of bars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Logo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image1".to_s, :count => 2
    assert_select "tr>td", :text => "Image2".to_s, :count => 2
  end
end
