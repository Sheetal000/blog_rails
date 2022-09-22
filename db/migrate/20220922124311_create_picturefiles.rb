class CreatePicturefiles < ActiveRecord::Migration[7.0]
  def change
    create_table :picturefiles do |t|

      t.timestamps
    end
  end
end
