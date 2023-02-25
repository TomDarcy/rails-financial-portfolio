class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :investment, null: false, foreign_key: true
      t.date :date
      t.string :type
      t.decimal :amount

      t.timestamps
    end
  end
end
