# Write your code here.
def dictionary
  words = {
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

def word_substituter(tweet)
  str = tweet.split(" ")
    str.each do |long|
     dictionary.each do |key, value|
         if long === key
        long.replace(value)
       end
      end
    end
  str.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.collect do |element|
    puts word_substituter(element)
  end
end 

def selective_tweet_truncator(arr)
  tweet = arr.split(" ")
  if tweet.length > 140
    word_substituter(arr)
    else
    arr
  end
end
  