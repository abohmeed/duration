#!/usr/bin/env ruby 
if ARGV.empty? || ARGV.length > 1 || ! File.directory?(ARGV[0])
    puts "Please enter one path to video files"
    exit 1
end
# Constants
rate = 65.0/60/60
total = 0
videos = Dir["#{ARGV[0]}/*.mp4"]
for v in videos do
    durarion = `ffmpeg -i "#{v}" 2>&1`.scan(/Duration:\s*(\d\d):(\d\d):(\d\d)/).first
    hours = durarion[0].to_i
    minutes = durarion[1].to_i
    seconds = durarion[2].to_i
    total += (hours * 60 * 60) + (minutes * 60) + seconds
end
fees = rate * total
total = Time.at(total).utc.strftime("%H hours, %M minutes, and %S seconds")

puts "Total videos time is #{total}"
puts "Ask for $#{fees.round}"
