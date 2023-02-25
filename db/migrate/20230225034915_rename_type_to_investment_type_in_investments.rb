class RenameTypeToInvestmentTypeInInvestments < ActiveRecord::Migration[6.1]
  def change
    rename_column :investments, :type, :investment_type
  end
end
