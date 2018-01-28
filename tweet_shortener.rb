 def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
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
    else 
      word 
    end 
  end 
  subbed.join(" ")
end 

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end 
end 
  