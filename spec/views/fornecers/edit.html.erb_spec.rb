require 'rails_helper'

RSpec.describe "fornecers/edit", type: :view do
  before(:each) do
    @fornecer = assign(:fornecer, Fornecer.create!(
      :cod_fornecedor => "MyString",
      :nome_fornecedor => "MyString"
    ))
  end

  it "renders the edit fornecer form" do
    render

    assert_select "form[action=?][method=?]", fornecer_path(@fornecer), "post" do

      assert_select "input[name=?]", "fornecer[cod_fornecedor]"

      assert_select "input[name=?]", "fornecer[nome_fornecedor]"
    end
  end
end
