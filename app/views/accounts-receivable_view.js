var View     = require('./view')
  , template = require('./templates/accounts-receivable')

module.exports = View.extend({
    id: 'accounts-receivable-view',
    el: '#main',
    template: template,
    initialize: function() {

    }
})
