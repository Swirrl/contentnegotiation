# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.2' # unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.time_zone = 'UTC'

end

# +++++++++++++ Extra line needed for the RDF content negotiation example ++++++++++++++++
# need this so we can use respond_to with '.rdf'
Mime::Type.register("application/rdf+xml", :rdf)