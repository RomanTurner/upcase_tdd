#!/usr/bin/env ruby
# -*- ruby -*-

require "rake"
require "pry"

task :environment do
  require_relative "./config/environment"
end

desc "drop into the Pry console"
task :console => :environment do
  Pry.start
end
