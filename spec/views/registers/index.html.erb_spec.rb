require 'spec_helper'

describe "registers/index" do
  before(:each) do
    assign(:registers, [
      stub_model(Register,
        :email => "Email"
      ),
      stub_model(Register,
        :email => "Email"
      )
    ])
  end

  it "renders a list of registers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
