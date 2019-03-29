class AddResponseId < ActiveRecord::Migration[5.2]
    
  def change
    add_column :responses, :answer_choice_id, :integer, null:false
    remove_column :responses, :question_id
  end
end
