require "fencepost/fencepost"
require "fencepost/gate"
require "fencepost/acts_as_fencepost"
require "fencepost/configuration"
require "fencepost/railtie"

module Fencepost
  class << self
    def configure
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end
  end
end
