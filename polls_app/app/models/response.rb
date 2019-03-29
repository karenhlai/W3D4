class Response < ApplicationRecord
  validates :user_id, presence: true
  validates :answer_choice_id, presence: true
  validate :not_duplicate_response

    belongs_to :respondent,
    primary_key: :id,  
    foreign_key: :user_id,
    class_name: :User
  
    belongs_to :answer_choice,
    primary_key: :id,  
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice 

    has_one :question,
    through: :answer_choice,
    source: :question

    has_one :poll,
    through: :question,
    source: :poll

    def sibling_responses
      self.question.responses.where('id != self.id')
    end

    def respondent_already_answered?
      sibling_responses.exists?(self)      
    end

    def not_duplicate_response
      if (respondent_already_answered?)
        self.errors[:user_id] << "You have already answered"
      end
    end

end
