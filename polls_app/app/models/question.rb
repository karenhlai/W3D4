class Question < ApplicationRecord
    validates :poll_id, presence: true, uniqueness: true
    validates :text, presence: true  

    belongs_to :poll,
    primary_key: :id,  
    foreign_key: :poll_id,
    class_name: :Poll 
    
  has_many :answer_choices,
    primary_key: :id,  
    foreign_key: :question_id,
    class_name: :AnswerChoice

  has_many :responses
    through: :answer_choices,
    source: :responses
# SLOW
  # def results
  #   answers = self.answer_choices

    # answer_response_counts = {}
    # answers.each do |answer|
    #   answer_response_counts[answer] = answer_choices.responses.count
    # end
  # end
  def results
    answers = self.answer_choices.includes(:responses)

    answer_response_counts = {}
    answers.each do |answer|
      answer_response_counts[answer] = answer.responses.count
    end
  end
end
