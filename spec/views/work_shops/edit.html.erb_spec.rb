require 'rails_helper'

RSpec.describe "work_shops/edit", type: :view do
  before(:each) do
    @work_shop = assign(:work_shop, WorkShop.create!(
      :title => "MyString",
      :about => "MyText",
      :location => "MyText",
      :requirements => "MyText",
      :includes => "MyText",
      :group_size => "MyString",
      :about_host => "MyText",
      :active => false
    ))
  end

  it "renders the edit work_shop form" do
    render

    assert_select "form[action=?][method=?]", work_shop_path(@work_shop), "post" do

      assert_select "input#work_shop_title[name=?]", "work_shop[title]"

      assert_select "textarea#work_shop_about[name=?]", "work_shop[about]"

      assert_select "textarea#work_shop_location[name=?]", "work_shop[location]"

      assert_select "textarea#work_shop_requirements[name=?]", "work_shop[requirements]"

      assert_select "textarea#work_shop_includes[name=?]", "work_shop[includes]"

      assert_select "input#work_shop_group_size[name=?]", "work_shop[group_size]"

      assert_select "textarea#work_shop_about_host[name=?]", "work_shop[about_host]"

      assert_select "input#work_shop_active[name=?]", "work_shop[active]"
    end
  end
end
