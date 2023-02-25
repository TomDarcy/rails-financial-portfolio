class TransactionsController < ApplicationController
  before_action :set_investment
  before_action :set_transaction, only: %i[show edit update destroy]

  def index
    @transactions = @investment.transactions
  end

  def show; end

  def new
    @transaction = @investment.transactions.new
  end

  def edit; end

  def create
    @transaction = @investment.transactions.new(transaction_params)

    if @transaction.save
      redirect_to investment_transactions_path(@investment), notice: 'Transaction was successfully created.'
    else
      render :new
    end
  end

  def update
    if @transaction.update(transaction_params)
      redirect_to investment_transactions_path(@investment), notice: 'Transaction was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @transaction.destroy
    redirect_to investment_transactions_path(@investment), notice: 'Transaction was successfully destroyed.'
  end

  private

  def set_investment
    @investment = Investment.find(params[:investment_id])
  end

  def set_transaction
    @transaction = @investment.transactions.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:date, :type, :amount)
  end
end
