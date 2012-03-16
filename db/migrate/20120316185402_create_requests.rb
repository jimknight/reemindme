class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.text :phrase

      t.timestamps
    end
  end
end
