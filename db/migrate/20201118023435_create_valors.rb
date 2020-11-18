class CreateValors < ActiveRecord::Migration[5.2]
  def change
    create_table :valors do |t|
      t.string :valor1

      t.timestamps
    end
  end
end
