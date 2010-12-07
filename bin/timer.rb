#!/usr/bin/env ruby -rubygems

require "timer"

def usage
  puts "Usage:  timer.rb [duration]\n\n"
  puts "Examples: timer.rb 2h"
  puts "\t  timer.rb 2s"
  puts "\t  timer.rb 2m"
  puts "\t  timer.rb 2m 2h 2s\n\n"
end

duration = Timer::TimeParser.parse_duration(ARGV)
duration.nil? ? usage : Timer::Timer.new(duration)

