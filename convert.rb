#!/usr/bin/env ruby

require 'yaml'
require 'json'
require 'awesome_print'

#File.write('data.json', YAML.load_file('data.yaml').to_json())
all_data = YAML.load_file('data.yaml')

all_data.each do |week, config|
  File.write("data/#{week}.json", config.to_json())
end

week_map = Hash[all_data.map { |week, data| [ week, data['singe'] ] }]
File.write("weeks.json", week_map.to_json())
