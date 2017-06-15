# == Schema Information
#
# Table name: answer_choices
#
#  id         :integer          not null, primary key
#  answer     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AnswerChoice < ApplicationRecord
  validates :question, :text, presence: true

  belongs_to :question,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Question

#an answer choice can only be responsed to once
#an answer choice can be chosen (responded to) ,ultiple times by different users


  has_many :responses,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :Response
end
