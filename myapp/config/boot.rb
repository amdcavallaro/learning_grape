require 'rubygems'
require 'grape'
Dir.glob("**/*.rb").eachputs "Loaded #{f}"
  require_relative "../#{f}" unless File.absolute_path(f) == __FILE__
end