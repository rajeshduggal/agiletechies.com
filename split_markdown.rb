#!/usr/bin/env ruby

# Usage:
#   ruby split_markdown.rb input.md
#
# This will create:
#   001.md, 002.md, 003.md, ...
# each beginning with a heading found in the source file.

input = ARGV[0]
abort "Usage: ruby split_markdown.rb <input.md>" unless input && File.exist?(input)

lines = File.readlines(input, encoding: "UTF-8")

file_index = 0
current_lines = []

def write_chunk(index, lines)
  filename = "%03d.md" % index
  File.write(filename, lines.join)
  puts "Wrote #{filename}"
end

lines.each do |line|
  if line.match?(/^#{'#'}+/)  # matches any heading level: #, ##, ###, etc.
    # Write previous chunk if it exists
    unless current_lines.empty?
      write_chunk(file_index, current_lines)
      file_index += 1
      current_lines = []
    end
  end

  current_lines << line
end

# Write the last chunk
unless current_lines.empty?
  write_chunk(file_index, current_lines)
end
