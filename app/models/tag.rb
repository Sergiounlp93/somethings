class Tag < ApplicationRecord
	has_and_belongs_to_many :questions
	validates :nombre, :presence => {:message => "Usted debe ingresar un nombre!"}, length: {minimum: 1, maximum: 30, :message => "El nombre debe tener entre 1 y 15 caracteres!"}
	scope :noeliminados, -> {where(marca: false) }
end
