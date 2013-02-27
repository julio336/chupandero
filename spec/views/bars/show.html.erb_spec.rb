require 'spec_helper'

describe "bars/show" do
  before(:each) do
    @bar = assign(:bar, stub_model(Bar,
      :name => "Name",
      :logo => "Logo",
      :description => "MyText",
      :address => "MyText",
      :phone => "MyText",
      :horary => "MyText",
      :promo => "MyText",
      :image1 => "Image1",
      :image2 => "Image2"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Logo/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Image1/)
    rendered.should match(/Image2/)
  end
end
