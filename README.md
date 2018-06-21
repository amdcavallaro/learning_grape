# Purpose of this project
 learning_grape following the tutorial https://wildandcrazytutorials.wordpress.com/2016/03/05/how-to-build-a-grape-standalone-rest-api/
 
## Error found
I encounter the error:

Puma starting in single mode...
Version 3.6.2 (ruby 2.2.2-p95), codename: Sleepy Sunday Serenity
Min threads: 0, max threads: 16
Environment: development
ERROR: No application configured, nothing to run
when I run puma in In ./myapp

## Solution to the error:

I got my answer from Daniel @ https://groups.google.com/forum/#!forum/ruby-grape

There was a syntax error, his code below fixed my problem, I appreciate it.

require 'rubygems' 
require 'grape'

Dir.glob("**/*.rb").each do |f|
puts "Loaded #{f}"
require_relative "../#{f}" unless File.absolute_path(f) == __FILE__
end
