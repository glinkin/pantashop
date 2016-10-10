require 'spec_helper'

describe "phone_orders/new" do
  before(:each) do
    assign(:phone_order, stub_model(PhoneOrder,
      :name => "MyString",
      :phone => "MyString"
    ).as_new_record)
  end

  it "renders new phone_order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", phone_orders_path, "post" do
      assert_select "input#phone_order_name[name=?]", "phone_order[name]"
      assert_select "input#phone_order_phone[name=?]", "phone_order[phone]"
    end
  end
end
