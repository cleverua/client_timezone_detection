puts "Copying files required for ClientTimezoneDetection..."

["jquery.cookie.js", "time_zone_detection.js"].each do |js_file|
	dest_file = File.join(RAILS_ROOT, "public", "javascripts", js_file)
	src_file = File.join(File.dirname(__FILE__) , "fixtures", js_file)
	FileUtils.cp_r(src_file, dest_file)
end

puts "ClientTimezoneDetection installed successfully"
