# Write your code here.

def word_substituter(string)

  shorts = {
    "hello": 'hi',
    "to": '2',
    "two": "2",
    "too": "2",
    "for": '4',
    "four": '4',
    'be': 'b',
    'you': 'u',
    "at": "@",
    "and": "&"
  }

  array = string.split

  array.each_with_index do |word, index|

    shorts.each do |key,value|

        if word == key.to_s || word == key.to_s.capitalize
            if word == key.to_s.capitalize
                array[index] = value.capitalize || array[index] = value
            else
                array[index] = value
            end
        end

    end

  end

  return array*" "

end

def bulk_tweet_shortener(array)

    shorts = {
      "hello": 'hi',
      "to": '2',
      "two": "2",
      "too": "2",
      "for": '4',
      "four": '4',
      'be': 'b',
      'you': 'u',
      "at": "@",
      "and": "&"
    }

    array.each do |tweet|

        tweet_array = tweet.split
        tweet_array.each_with_index do |word, index|

          shorts.each do |key,value|

            if word == key.to_s || word == key.to_s.capitalize
                if word == key.to_s.capitalize
                    tweet_array[index] = value.capitalize || tweet_array[index] = value
                else
                    tweet_array[index] = value
                end
            end

          end

        end

        puts tweet_array*" "

    end

end

def selective_tweet_shortener(string)

    shorts = {
      "hello": 'hi',
      "to": '2',
      "two": "2",
      "too": "2",
      "for": '4',
      "four": '4',
      'be': 'b',
      'you': 'u',
      "at": "@",
      "and": "&"
    }

    if string.length < 140
        return string
    end

    array = string.split

    array.each_with_index do |word, index|

      shorts.each do |key,value|

          if word == key.to_s || word == key.to_s.capitalize
              if word == key.to_s.capitalize
                  array[index] = value.capitalize || array[index] = value
              else
                  array[index] = value
              end
          end

      end

    end

    return array*" "

end

def shortened_tweet_truncator(string)

    shorts = {
      "hello": 'hi',
      "to": '2',
      "two": "2",
      "too": "2",
      "for": '4',
      "four": '4',
      'be': 'b',
      'you': 'u',
      "at": "@",
      "and": "&"
    }

    if string.length < 140
        return string
    end

    array = string.split

    array.each_with_index do |word, index|

      shorts.each do |key,value|

          if word == key.to_s || word == key.to_s.capitalize
              if word == key.to_s.capitalize
                  array[index] = value.capitalize || array[index] = value
              else
                  array[index] = value
              end
          end

      end

    end

    array = array*" "

    if array.length > 140
        return array.slice(0,140)
    end

    return array

end
