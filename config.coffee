exports.config =
    
    # Edit the next line to change default build path.
    paths:
        public: 'public'
    
    files:
        javascripts:
            # Defines what file will be generated with `brunch generate`.
            defaultExtension: 'js'
            
            # Describes how files will be compiled & joined together.
            # Available formats:
            # * 'outputFilePath'
            # * map of ('outputFilePath': /regExp that matches input path/)
            # * map of ('outputFilePath': function that takes input path)
            joinTo:
                'javascripts/app.js': /^app/
                'javascripts/vendor.js': /^vendor/
                'test/javascripts/test.js': /^test[\\/](?!vendor)/
                'test/javascripts/test-vendor.js': /^test[\\/](?=vendor)/
            
            # Defines compilation order.
            # `vendor` files will be compiled before other ones
            # even if they are not present here.
            order:
                before: [
                    
                    'vendor/scripts/console-helper.js',
                    'vendor/scripts/jquery-1.10.1.js',
                    'vendor/scripts/underscore-1.4.4.js',
                    'vendor/scripts/backbone-1.0.0.js',
                    'vendor/scripts/backbone-mediator.js',
                    
                    # These must come before the rest of the Bootstrap JS becasue of dependencies
                    'vendor/scripts/bootstrap/bootstrap-tooltip.js',
                    'vendor/scripts/bootstrap/bootstrap-transition.js',
                    
                    'vendor/scripts/bootstrap/bootstrap-affix.js',
                    'vendor/scripts/bootstrap/bootstrap-alert.js',
                    'vendor/scripts/bootstrap/bootstrap-button.js',
                    'vendor/scripts/bootstrap/bootstrap-carousel.js',
                    'vendor/scripts/bootstrap/bootstrap-collapse.js',
                    'vendor/scripts/bootstrap/bootstrap-dropdown.js',
                    'vendor/scripts/bootstrap/bootstrap-modal.js',
                    'vendor/scripts/bootstrap/bootstrap-popover.js',
                    'vendor/scripts/bootstrap/bootstrap-scrollspy.js',
                    'vendor/scripts/bootstrap/bootstrap-tab.js',
                    'vendor/scripts/bootstrap/bootstrap-typeahed.js',
                    
                ]
                after: [
                  'test/vendor/scripts/test-helper.js'
                ]
               
        stylesheets:
            defaultExtension: 'less'
            joinTo: 
              'stylesheets/app.css': /^(app|vendor)/
              'test/stylesheets/test.css': /^test/
            order:
                before: ['vendor/styles/bootstrap/bootstrap.less']
                
            
        templates:
            defaultExtension: 'hbs'
            joinTo: 'javascripts/app.js'
        

    # Change this if you're using something other than backbone (e.g. 'ember').
    # Content of files, generated with `brunch generate` depends on the setting.
    framework: 'backbone'
    
    # Settings of web server that will run with `brunch watch [--server]`.
    # server:
    #    # Path to your server node.js module.
    #    # If it's commented-out, brunch will use built-in express.js server.
    #    path: 'server.coffee'
    #    port: 3333
    #    
    #    # Run even without `--server` option?
    #    run: yes
