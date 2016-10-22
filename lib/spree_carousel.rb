require 'spree_core'
require 'spree_carousel/configuration'
require 'spree_carousel/engine'

module SpreeCarousel
    # Your code goes here...
    # Exception raised when gem may not be configured properly
    class ConfigurationError < StandardError; end

    # Set global configuration options for blog. {file:README.md read more}
    def self.configure(&block)
        block.call(configuration)
    end

    # blog's global configuration.
    #
    # Returns a Configuration
    def self.configuration
        @configuration ||= Configuration.new
    end
end
