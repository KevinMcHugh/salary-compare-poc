class CreateJobTitle < ActiveRecord::Migration
  def change
    create_table :job_titles do |t|
      t.text :name

      t.timestamps
    end
  end
end
