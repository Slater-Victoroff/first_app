require 'spec_helper'

describe "sizings/edit" do
  before(:each) do
    @sizing = assign(:sizing, stub_model(Sizing,
      :brand => "MyString",
      :size => "MyString",
      :bust => 1.5,
      :wasit => 1.5,
      :hips => 1.5
    ))
  end

  it "renders the edit sizing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sizings_path(@sizing), :method => "post" do
      assert_select "input#sizing_brand", :name => "sizing[brand]"
      assert_select "input#sizing_size", :name => "sizing[size]"
      assert_select "input#sizing_bust", :name => "sizing[bust]"
      assert_select "input#sizing_wasit", :name => "sizing[wasit]"
      assert_select "input#sizing_hips", :name => "sizing[hips]"
    end
  end
end
