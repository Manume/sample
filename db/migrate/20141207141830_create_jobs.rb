class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :career, index: true
      t.string :des1
      t.string :des2
      t.string :des3
      t.string :des4
      t.string :des5
      t.string :des6
      t.string :des7
      t.string :des8
      t.string :skill1
      t.string :skill2
      t.string :skill3
      t.string :skill4
      t.string :skill4
      t.string :skill5
      t.string :skill6
      t.string :skill7

      t.timestamps
    end
  end
end
