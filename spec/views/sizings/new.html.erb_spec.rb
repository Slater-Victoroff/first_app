require 'spec_helper'

describe "sizings/new" do
  before(:each) do
    assign(:sizing, stub_model(Sizing,
      :brand => "MyString",
      :size => "MyString",
      :bust => 1.5,
      :wasit => 1.5,
      :hips => 1.5
    ).as_new_record)
  end

  it "renders new sizing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sizings_path, :method => "post" do
      assert_select "input#sizing_brand", :name => "sizing[brand]"
      assert_select "input#sizing_size", :name => "sizing[size]"
      assert_select "input#sizing_bust", :name => "sizing[bust]"
      assert_select "input#sizing_wasit", :name => "sizing[wasit]"
      assert_select "input#sizing_hips", :name => "sizing[hips]"
    end
  end
end
