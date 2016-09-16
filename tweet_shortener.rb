def dictionary
  word = {
    "hello" => "hi",
    "two" => "2",
    "too" => "2",
    "to" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be " => "b ",
    "you " => "u ",
    " at " => " @ ",
    " and" => " &"
  }
#  puts word
end

#dictionary()

def word_substituter(tweet)
  dictionary.each do |key,value|
    if tweet.include?(key)
      wordSwap = tweet.partition(key)
      wordSwap[1] = value
      tweet = wordSwap.join
    end
  end
  dictionary.each do |key,value|
    if tweet.include?(key)
      wordSwap = tweet.partition(key)
      wordSwap[1] = value
      tweet = wordSwap.join
    end
  end
  dictionary.each do |key,value|
    if tweet.include?(key)
      wordSwap = tweet.partition(key)
      wordSwap[1] = value
      tweet = wordSwap.join
    end
  end
  tweet
end

def bulk_tweet_shortener(tweetArray)
  tweetArray.map do |tweet|
    puts word_substituter(tweet)
  end
  tweetArray
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  tweet.slice!(137...tweet.length)
  tweet << "..."
end
