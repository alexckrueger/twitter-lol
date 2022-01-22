class RemoveTweetFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :tweet, :string
  end
end
