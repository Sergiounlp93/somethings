class AddColumnToQuestion < ActiveRecord::Migration[5.1]
  def change
  		add_column :questions, :university_id, :integer
  end
end
