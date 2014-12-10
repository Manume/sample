class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :full_name
      t.string :email_address
      t.string :upload_cv

      t.timestamps
    end
  end
end
