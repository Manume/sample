class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :type_of_design
      t.string :portfolio_image
      t.text :description

      t.timestamps
    end
  end
end
