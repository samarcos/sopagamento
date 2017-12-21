class Fornecer
  include Mongoid::Document
  field :cod_fornecedor, type: String
  field :nome_fornecedor, type: String

  index({ cod_fornecedor: 1}, {unique: true})
  
    before_create :generate_fornecedor_code
  
    protected
    def generate_fornecedor_code
      self.cod_fornecedor = SecureRandom.hex(5)
    end

end
