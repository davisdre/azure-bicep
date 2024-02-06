using './main.bicep'

param budgetName = ''
param amount = 0
param timeGrain = 'Monthly'
param startDate = ''
param endDate = ''
param firstThreshold = 90
param secondThreshold = 110
param contactEmails = ['email@domain.com', 'email@domain.com']

