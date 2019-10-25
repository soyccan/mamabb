class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :contents
      t.string :poster

      t.timestamps
    end
  end
end
