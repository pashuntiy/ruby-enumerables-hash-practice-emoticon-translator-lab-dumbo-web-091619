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

def get_japanese_emoticon(source, emoticons)
  output = load_library(source)["get_emoticon"][emoticons]
  if output == nil
    puts "Sorry"
  end
end

def get_english_meaning(source, emoticons)
  output = load_library(source)["get_meaning"][emoticons]
end
