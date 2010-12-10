require 'rails'
require 'client_timezone_detection'
require 'client_timezone_detection/view_helpers'
require 'client_timezone_detection/controller_helpers'


class ClientTimezoneRailtie < ::Rails::Railtie
  config.to_prepare do
    require 'client_timezone_detection_install'	
     module ClientTimezoneDetection
      class << self
        def enable_action_view_extensions
	  ActionView::Base.send(:include, ViewHelpers)
        end
        def enable_controller_extensions
 	  ApplicationController.send(:include, ControllerHelpers) 
        end
      end
     end

     ClientTimezoneDetection.enable_action_view_extensions
     ClientTimezoneDetection.enable_controller_extensions
  end	    
end
