src_path = File.join(File.expand_path("../../", __FILE__), "js_files/.")
dest_file = ::Rails.root.join("public", "javascripts")

unless File.exist?(::Rails.root.join("public", "javascripts", "jquery.cookie.js")) && File.exist?(::Rails.root.join("public", "javascripts", "time_zone_detection.js"))
  puts "Copying files required for ClientTimezoneDetection..."
  FileUtils.cp_r(src_path, dest_file)
  puts "ClientTimezoneDetection installed successfully"
end
