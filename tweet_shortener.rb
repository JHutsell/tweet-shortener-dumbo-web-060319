# Write your code here.

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet_string)
  tweet_arr = tweet_string.split
  new_tweet = []
  tweet_arr.each do |word|
    if dictionary.keys.include?(word.downcase)
      new_tweet << dictionary[word.downcase]
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) } 
end