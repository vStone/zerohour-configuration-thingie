#!/usr/bin/env ruby

require 'yaml'
require 'json'

File.write('data.json', YAML.load_file('data.yaml').to_json())
