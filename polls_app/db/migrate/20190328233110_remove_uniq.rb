class RemoveUniq < ActiveRecord::Migration[5.2]
  def change
    remove_column :answer_choices, :question_id
    add_column :answer_choices, :question_id, :integer, null: false
  end
end
