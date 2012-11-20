require 'spec_helper'

describe "sizings/show" do
  before(:each) do
    @sizing = assign(:sizing, stub_model(Sizing,
      :brand => "Brand",
      :size => "Size",
      :bust => 1.5,
      :wasit => 1.5,
      :hips => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Brand/)
    rendered.should match(/Size/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
