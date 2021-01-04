require "cypress-rails/version"

module CypressRails
  def self.config
    @config ||= Config.new
  end

  def self.configure
    yield config
  end
end

require "cypress-rails/init"
require "cypress-rails/open"
require "cypress-rails/run"
require "cypress-rails/resets_state"
require "cypress-rails/initializer_hooks"
require "cypress-rails/railtie" if defined?(Rails)
