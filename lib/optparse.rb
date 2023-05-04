require 'optparse'

def optparse
  options = {}
  OptionParser.new do |opts|
    opts.banner = "Usage: example.rb [options]"

    opts.on("-f", "--file FILE", "Specify input file") do |file|
      options[:input_file] = file
    end

    opts.on("-o", "--output FILE", "Specify output file") do |file|
      options[:output_file] = file
    end

    opts.on("-i", "--ip IP", "Specify IP address") do |ip|
      options[:ip] = ip
    end

    opts.on("-v", "--verbose", "Enable verbose output") do
      options[:verbose] = true
    end
  end.parse!
  options
end