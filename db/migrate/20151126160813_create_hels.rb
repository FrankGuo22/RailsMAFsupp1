class CreateHels < ActiveRecord::Migration
  def change
    create_table :hels do |t|

      t.timestamps null: false
    end
  end
end
