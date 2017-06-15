# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord

  belongs_to :poll,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Poll

  has_many :answer_choices,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :AnswerChoice

#has_many :responses
  has_many :responses,
    through: :answer_choices,
    source: :response
end
