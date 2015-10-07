require "isolation/version"
require "open3"

root_directory = File.expand_path("../", File.dirname(__FILE__))

Dir["#{root_directory}/lib/isolation/*.rb"].sort.each {|file| require file }

module Isolation
  # Your code goes here...
end
