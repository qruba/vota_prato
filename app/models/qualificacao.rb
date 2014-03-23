class Qualificacao < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :restaurante
	has_many :comentarios, :as => :comentavel

	validates_presence_of :nota, message: "- deve ser preenchido"
	validates_presence_of :valor_gasto, message: "- deve ser preenchido"

	validates_numericality_of :nota, greater_than_or_equals_to: 0,
									 less_tan_or_equals_to: 10,
									 message: "- deve ser entra 0 e 10"

	validates_numericality_of :valor_gasto, greater_than: 0,
											message: "- deve ser um numero maior que 0"

	validates_presence_of :cliente_id, :restaurante_id
	validates_associated :cliente, :restaurante
end
