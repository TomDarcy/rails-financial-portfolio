class RenameTypeToTransactionTypeInTransactions < ActiveRecord::Migration[7.0]
  def change
        rename_column :transactions, :type, :transactions_type

  end
end
