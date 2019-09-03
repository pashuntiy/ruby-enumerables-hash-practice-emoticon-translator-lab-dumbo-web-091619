require "yaml"

def load_library(source)
  emotions = YAML.load_file(source)

  hash = {
    "get_emoticon":  {},
    "get_meaning": {}
    
  }

  emotions.each do |x, y|
    hash["get_emotions"][value[0]] = source[key][1]
    hash["get_meaning"][value[1]] = key
  end
hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end