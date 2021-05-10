class TodoItem < ApplicationRecord
  belongs_to :todo_list

  scope :completed, ->do
    where(completed: true)
  end

  def mark_complete
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.update(completed:true, completed_at:Time.now)
  end
end
