class Task < ApplicationRecord
  validates :title, presence: true

  def toggle_complete!
    self.completed = self.completed ? false : true
    self.save
  end
end
