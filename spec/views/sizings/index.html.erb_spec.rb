require 'spec_helper'

describe "sizings/index" do
  before(:each) do
    assign(:sizings, [
      stub_model(Sizing,
        :brand => "Brand",
        :size => "Size",
        :bust => 1.5,
        :wasit => 1.5,
        :hips => 1.5
      ),
      stub_model(Sizing,
        :brand => "Brand",
        :size => "Size",
        :bust => 1.5,
        :wasit => 1.5,
        :hips => 1.5
      )
    ])
  end

  it "renders a list of sizings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
