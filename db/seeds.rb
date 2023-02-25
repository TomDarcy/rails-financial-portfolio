# Create some investments
apple = Investment.create(name: 'Apple Inc.', description: 'AAPL', investment_type: 'Stocks')
vanguard = Investment.create(name: 'Vanguard Total Bond Market Index Fund', description: 'VBTLX',
                             investment_type: 'Mutual Funds')

# Create some transactions
Transaction.create(investment_id: apple.id, date: '2022-01-01', transactions_type: 'Buy', amount: 1000)
Transaction.create(investment_id: apple.id, date: '2022-01-15', transactions_type: 'Sell', amount: 500)
Transaction.create(investment_id: vanguard.id, date: '2022-01-01', transactions_type: 'Buy', amount: 5000)

# Create some assets
checking = Asset.create(name: 'Checking Account', assets_type: 'Checking Account', balance: 5000)
savings = Asset.create(name: 'Savings Account', assets_type: 'Savings Account', balance: 10_000)
real_estate = Asset.create(name: 'Rental Property', assets_type: 'Real Estate', balance: 250_000)
