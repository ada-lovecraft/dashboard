var application = require('application')

module.exports = Backbone.Router.extend({
    routes: {
        'accounts-receivable': 'accountsReceivable',
        '/payments': 'payments',
        '/audits': 'audits',
        '/inventory': 'inventory',
        '/transactions':'transactions',
        '': 'overview'
    },
    overview: function() {
    	console.debug('overview')
        $('body').html(application.homeView.render().el)
    },
    accountsReceivable: function() {
    	console.debug('ar')
        $('body').html(application.arView.render().el)
    },
    payments: function() {
    	console.debug('payments')
        $('body').html(application.paymentsView.render().el)
    },
    audits: function() {
    	console.debug('audits')
        $('body').html(application.auditsView.render().el)
    },
    inventory: function() {
    	console.debug('inventory')
        $('body').html(application.inventoryView.render().el)
    },
    transactions: function() {
    	console.debug('transactions')
        $('body').html(application.transactionsView.render().el)
    }
})
