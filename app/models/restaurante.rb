class Restaurante < ActiveRecord::Base
	has_and_belongs_to_many :prato
	has_many :qualificacoes

	validates_presence_of :nome, message: "Deve ser preenchido"
	validates_presence_of :endereco, message: "Deve ser preenchido"
	validates_presence_of :especialidade, message: "Deve ser preenchido"

	validates_uniqueness_of :nome, message: "Nome ja cadastrado"
	validates_uniqueness_of :endereco, message: "Endereco ja cadastrado"

	validate :primeira_letra_maiuscula

	private
		def primeira_letra_maiuscula
			errors.add(:nome,
				"Primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/
		end
end