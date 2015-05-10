class CreateJob < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :job_title, index: true, foreign_key: true
      t.references :person, index: true, foreign_key: true
      t.references :employer, index: true, foreign_key: true
      t.float :salary
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
