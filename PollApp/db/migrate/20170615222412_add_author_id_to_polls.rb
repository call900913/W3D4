class AddAuthorIdToPolls < ActiveRecord::Migration[5.0]
  def change
    add_column :polls, :author_id, :integer
  end
end
