require 'rails_helper'

RSpec.describe "work_shops/show", type: :view do
  before(:each) do
    @work_shop = assign(:work_shop, WorkShop.create!(
      :title => "Title",
      :about => "MyText",
      :location => "MyText",
      :requirements => "MyText",
      :includes => "MyText",
      :group_size => "Group Size",
      :about_host => "MyText",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Group Size/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
