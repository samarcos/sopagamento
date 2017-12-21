require 'rails_helper'

RSpec.describe "Fornecers", type: :request do
  describe "GET /fornecers" do
    it "works! (now write some real specs)" do
      get fornecers_path
      expect(response).to have_http_status(200)
    end
  end
end
