class Expense < ApplicationRecord
  has_many :budget_category_expenses, dependent: :destroy

  has_many :budget_categories, through: :budget_category_expenses

  belongs_to :author, class_name: 'User'

  validates :name, presence: true
  validates :amount, presence: true
  validates :budget_categories, presence: true

  def time_created
    created_at.strftime('%d %b %Y at %I:%M%P')
  end
end
