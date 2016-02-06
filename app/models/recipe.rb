class Recipe < ActiveRecord::Base
  validates :name, :cookery, :kind_meal, :preference, :ingredients,
            :step_by_step, presence: true
end
