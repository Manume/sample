class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :job_title
      t.string :location

      t.timestamps
    end
  end
end
