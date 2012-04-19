class AddCommunityToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :community, :string
  end
end
