class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false

      t.timestamp
    end
    add_index :users, :username, unique: true

    create_table :polls do |t|
      t.string :title, null: false
      t.timestamp
    end
    add_index :polls, :title, unique: true

    create_table :questions do |t|
      t.integer :poll_id, null: false
      t.string :text, null:false

      t.timestamp
    end
    add_index :questions, :poll_id, unique: true

    create_table :answer_choices do |t|
      t.integer :question_id, null: false
      t.string :text, null:false

      t.timestamp
    end
    add_index :answer_choices, :question_id, unique: true

    create_table :responses do |t|
      t.integer :question_id, null: false
      t.integer :user_id, null: false

      t.timestamp
    end
    add_index :responses, :question_id, unique: true
    add_index :responses, :user_id, unique: true
  end
end
