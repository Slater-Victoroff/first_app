require 'spec_helper'

describe "sizings/show" do
  before(:each) do
    @sizing = assign(:sizing, stub_model(Sizing,
      :brand => "Brand",
      :sizing => 1,
      :bust => 1.5,
      :waist => 1.5,
      :hips => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Brand/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
