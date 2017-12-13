class QuestionReport < ApplicationRecord
	belongs_to :question 	
	validates :titulo, :presence => {:message => "No puedes dejarlo en blanco!"}, length: {maximum: 550, :message => "Debe tener como maximo 255 caracteres!"}
end
