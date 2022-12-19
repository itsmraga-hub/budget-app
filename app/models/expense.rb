class Expense < ApplicationRecord
  has_many :budget_categories

  belongs_to :author, class_name: 'User'
end
