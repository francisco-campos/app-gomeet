require 'rails_helper'

RSpec.describe "work_shops/index", type: :view do
  before(:each) do
    assign(:work_shops, [
      WorkShop.create!(
        :title => "Title",
        :about => "MyText",
        :location => "MyText",
        :requirements => "MyText",
        :includes => "MyText",
        :group_size => "Group Size",
        :about_host => "MyText",
        :active => false
      ),
      WorkShop.create!(
        :title => "Title",
        :about => "MyText",
        :location => "MyText",
        :requirements => "MyText",
        :includes => "MyText",
        :group_size => "Group Size",
        :about_host => "MyText",
        :active => false
      )
    ])
  end

  it "renders a list of work_shops" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Group Size".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
