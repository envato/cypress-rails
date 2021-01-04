require_relative "launches_cypress"
require_relative "config"

module CypressRails
  class Run
    def initialize
      @launches_cypress = LaunchesCypress.new
    end

    def call(config = CypressRails.config)
      @launches_cypress.call("run", config)
    end
  end
end
