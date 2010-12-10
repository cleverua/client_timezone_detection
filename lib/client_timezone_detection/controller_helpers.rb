module ControllerHelpers
  def self.included(base)
   base.class_eval("before_filter :set_client_time_zone")
  end

  private
  def set_client_time_zone
    Time.zone = browser_timezone.nil? ? "UTC" : browser_timezone
    logger.info("--- Client Timezone set: #{Time.zone}")
  end

  def browser_timezone
    return nil if cookies[:tzoffset].blank?
    @browser_timezone ||= begin
    min = cookies[:tzoffset].to_i
    ActiveSupport::TimeZone[-min.minutes]
    end
  end
end
