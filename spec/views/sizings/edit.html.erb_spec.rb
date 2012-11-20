require 'spec_helper'

describe "sizings/edit" do
  before(:each) do
    @sizing = assign(:sizing, stub_model(Sizing,
      :brand => "MyString",
      :sizing => 1,
      :bust => 1.5,
      :waist => 1.5,
      :hips => 1.5
    ))
  end

  it "renders the edit sizing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sizings_path(@sizing), :method => "post" do
      assert_select "input#sizing_brand", :name => "sizing[brand]"
      assert_select "input#sizing_sizing", :name => "sizing[sizing]"
      assert_select "input#sizing_bust", :name => "sizing[bust]"
      assert_select "input#sizing_waist", :name => "sizing[waist]"
      assert_select "input#sizing_hips", :name => "sizing[hips]"
    end
  end
end
