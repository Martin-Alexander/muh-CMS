class RemovePostFromTags < ActiveRecord::Migration[5.1]
  def change
    remove_reference :tags, :post, index: true
  end
end
