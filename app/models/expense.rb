class Expense < ApplicationRecord
  has_many :budget_category_expenses

  has_many :budget_categories, through: :budget_category_expenses

  belongs_to :author, class_name: 'User'
end
