require 'spec_helper'

describe "registers/edit" do
  before(:each) do
    @register = assign(:register, stub_model(Register,
      :email => "MyString"
    ))
  end

  it "renders the edit register form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => registers_path(@register), :method => "post" do
      assert_select "input#register_email", :name => "register[email]"
    end
  end
end
