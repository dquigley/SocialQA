class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :category
      t.text :question
      t.string :qformat
      t.integer :canswer

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
