require 'spec_helper'

describe "phone_orders/show" do
  before(:each) do
    @phone_order = assign(:phone_order, stub_model(PhoneOrder,
      :name => "Name",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Phone/)
  end
end
