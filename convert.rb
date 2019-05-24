#!/usr/bin/env ruby

require 'yaml'
require 'json'
require 'awesome_print'

#File.write('data.json', YAML.load_file('data.yaml').to_json())
all_data = YAML.load_file('data.yaml')

Dir.mkdir('data') unless File.exist?('data')
all_data['configurations'].each do |singe, config|
  File.write("data/#{singe}.json", config.to_json())
end

File.write("rotations.json", all_data['rotations'].to_json())
