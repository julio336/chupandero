require 'spec_helper'

describe "registers/new" do
  before(:each) do
    assign(:register, stub_model(Register,
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new register form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => registers_path, :method => "post" do
      assert_select "input#register_email", :name => "register[email]"
    end
  end
end
