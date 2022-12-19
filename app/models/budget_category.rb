class BudgetCategory < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :expenses, through: :budget_category_expenses
end
