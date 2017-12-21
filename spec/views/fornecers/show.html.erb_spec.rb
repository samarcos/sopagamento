require 'rails_helper'

RSpec.describe "fornecers/show", type: :view do
  before(:each) do
    @fornecer = assign(:fornecer, Fornecer.create!(
      :cod_fornecedor => "Cod Fornecedor",
      :nome_fornecedor => "Nome Fornecedor"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cod Fornecedor/)
    expect(rendered).to match(/Nome Fornecedor/)
  end
end
