module ViewHelpers
  def javascript_include_tz_detection
    javascript_include_tag 'jquery.cookie', 'time_zone_detection'
  end
end
