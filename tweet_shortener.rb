 def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end 

def  word_substituter(tweet)
  subbed = tweet.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word]
    end 
  end 
  subbed.join(" ")
end 