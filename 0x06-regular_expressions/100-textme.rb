#!/usr/bin/env ruby

# Check if the argument is provided and read the log file
if ARGV.length != 1
  puts "Usage: ./100-textme.rb <logfile>"
  exit(1)
end

logfile = ARGV[0]

# Read the log file and process each line
File.foreach(logfile) do |line|
  # Use regular expressions to extract the required information
  match = line.scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/)

  # Output the extracted information if a match is found
  puts "#{match[0][0]},#{match[0][1]},#{match[0][2]}" unless match.empty?
end
