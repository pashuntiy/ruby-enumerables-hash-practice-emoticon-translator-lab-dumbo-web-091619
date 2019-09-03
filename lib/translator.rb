require "yaml"

def load_library(source)
  emoticons = YAML.load_file(source)

  hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }

  emoticons.each do |x, y|
    hash["get_emoticon"][y[0]] = emoticons[x][1]
    hash["get_meaning"][y[1]] = x
  end
hash
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end