class Answer < ApplicationRecord
	belongs_to :question
	belongs_to :user
	validates :descripcion, :presence => {:message => "La respuesta no puede estar en blanco!"}, length: {minimum: 2, maximum: 550, :message => "La respuesta debe tener entre 2 y 550 caracteres"}
	acts_as_votable
	has_many :comment_answers
end
