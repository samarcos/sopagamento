require 'rails_helper'

RSpec.describe "fornecers/index", type: :view do
  before(:each) do
    assign(:fornecers, [
      Fornecer.create!(
        :cod_fornecedor => "Cod Fornecedor",
        :nome_fornecedor => "Nome Fornecedor"
      ),
      Fornecer.create!(
        :cod_fornecedor => "Cod Fornecedor",
        :nome_fornecedor => "Nome Fornecedor"
      )
    ])
  end

  it "renders a list of fornecers" do
    render
    assert_select "tr>td", :text => "Cod Fornecedor".to_s, :count => 2
    assert_select "tr>td", :text => "Nome Fornecedor".to_s, :count => 2
  end
end
