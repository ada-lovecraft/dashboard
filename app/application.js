// Application bootstrapper.
Application = {
    initialize: function() {
        
        var HomeView = require('views/home_view')
        , ARView = require('views/accounts-receivable_view')
        , PaymentsView = require('views/payments_view')
        , AuditsView = require('views/audits_view')
        , InventoryView = require('views/inventory_view')
        , TransactionsView = require('views/transactions_view')
        , Router   = require('lib/router')
        
        this.homeView = new HomeView()
        this.arView = new ARView()
        this.paymentsView = new PaymentsView()
        this.auditsView = new AuditsView()
        this.inventoryView = new InventoryView()
        this.transactionsView = new TransactionsView()
        this.router   = new Router()
        
        if (typeof Object.freeze === 'function') Object.freeze(this)
        
    }
}

module.exports = Application
