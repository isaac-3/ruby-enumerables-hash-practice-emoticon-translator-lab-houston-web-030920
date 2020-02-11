# require modules here
require "yaml"
require 'pry'

def load_library(file_path)
  files = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  files.each do |meaning, emoticon|
    result["get_meaning"][emoticon[1]] = meaning
    result["get_emoticon"][emoticon[0]] = emoticon[1]
  end
  result
end

def get_japanese_emoticon(file_path, emoticon)
  emo = load_library(file_path)
    binding.pry
  jap_emo = emo["get_emoticon"][emoticon]
  if 
    "Sorry, that emoticon was not found"
  end
  jap_emo
end 

def get_english_meaning
  # code goes here
end