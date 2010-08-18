require 'client_timezone_detection/view_helpers'
require 'client_timezone_detection/controller_helpers'

module ClientTimezoneDetection

  class << self
    def enable_action_view_extensions
      ActionView::Base.send :include, ViewHelpers
    end
    def enable_controller_extensions
      ApplicationController.send(:include, ControllerHelpers) 
    end
  end

end

if defined? Rails
  ClientTimezoneDetection.enable_action_view_extensions
  ClientTimezoneDetection.enable_controller_extensions
end

