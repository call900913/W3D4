class Response < ApplicationRecord


  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :respondent_id,
    class_name: :User

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id.
    class_name: :AnswerChoice

  has_one :question,
    through: :answer_choices,
    source: :question



end
# belongs_to :answer_choice
# will infer `:foreign_key => :respondent_id` from association name.
# belongs_to :respondent, class_name: "User"
