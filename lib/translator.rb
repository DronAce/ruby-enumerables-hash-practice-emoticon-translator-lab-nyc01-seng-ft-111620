# require modules here
require 'yaml'

def load_library(path)
  # code goes here
  emoji_hash = {}
  emoji = YAML.load_file(path)
  emoji.each do |name, emote|
    emoji_hash[name] = {}
    emoji_hash[name][:english] = emote[0]
    emoji_hash[name][:japanese] = emote[1]
  end
  emoji_hash
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  emoji = load_library(path)
<<<<<<< HEAD
  emoji.map do |name, value|
    if emoji[name].has_value?(emoticon)
      return emoji[name][:japanese]
    end
  end
  return "Sorry, that emoticon was not found"
=======
  # if emoji[name].has_key?(emoticon)
  #   return emoji[name][:japanese]
  # else
  #   return "No key here"
  # end
>>>>>>> 5eba7111a10d34312a8a67ce0f98f48fdffd8783
end

def get_english_meaning(path, emoticon)
  # code goes here
  emoji = load_library(path)
<<<<<<< HEAD
  emoji.each do |name, value|
    if emoji[name].has_value?(emoticon)
      return emoji.index(value)
    end
  end
  return "Sorry, that emoticon was not found"
=======
  # if emoji[name].has_key?(emoticon)
  #   return emoji.index(emoticon)
  # else
  #   return "No key here"
  # end
>>>>>>> 5eba7111a10d34312a8a67ce0f98f48fdffd8783
end
