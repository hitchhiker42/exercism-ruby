class Phrase

  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    word_hash = {}
    quotes = @sentence.downcase.split(Regexp.union( (/[\'][\s]/), (/[\s][\']/)))
    words = (quotes.map! { |fragment| fragment.scan(/[\w']+/) }).flatten

    i = 0

    while i < words.length
      if !(word_hash.include? words[i])
        value = words.count { |w| w == words[i]}
        word_hash[words[i]] = value
        i += 1
      else
        i += 1
      end
    end
    word_hash
  end
end