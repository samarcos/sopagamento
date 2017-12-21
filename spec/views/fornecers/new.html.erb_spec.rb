require 'rails_helper'

RSpec.describe "fornecers/new", type: :view do
  before(:each) do
    assign(:fornecer, Fornecer.new(
      :cod_fornecedor => "MyString",
      :nome_fornecedor => "MyString"
    ))
  end

  it "renders new fornecer form" do
    render

    assert_select "form[action=?][method=?]", fornecers_path, "post" do

      assert_select "input[name=?]", "fornecer[cod_fornecedor]"

      assert_select "input[name=?]", "fornecer[nome_fornecedor]"
    end
  end
end
