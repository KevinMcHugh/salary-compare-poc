class CreateEmployer < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.text :name
    end
  end
end
