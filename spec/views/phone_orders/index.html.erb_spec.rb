require 'spec_helper'

describe "phone_orders/index" do
  before(:each) do
    assign(:phone_orders, [
      stub_model(PhoneOrder,
        :name => "Name",
        :phone => "Phone"
      ),
      stub_model(PhoneOrder,
        :name => "Name",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of phone_orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
