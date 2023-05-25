class CreateRuffleFeathers < ActiveRecord::Migration[7.0]
  def change
    create_table :ruffle_feathers do |t|
      t.string :name
      t.string :type
      t.string :origin

      t.timestamps
    end
  end
end
