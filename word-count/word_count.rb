class Phrase

  def initialize(sentence)
    @sentence = sentence
  end

  def word_count

    raise ArgumentError, 'Invalid Input' unless (@sentence.is_a? String)

    word_hash = {}
    quotes = @sentence.downcase.split(Regexp.union((/[\'][\s]/), (/[\s][\']/)))
    words = (quotes.map! { |fragment| fragment.scan(/[\w']+/) }).flatten

    for i in 0...(words.length) do
      if !(word_hash.include? words[i])
        value = words.count { |w| w == words[i] }
        word_hash[words[i]] = value
      end
    end
  word_hash
  end
  
end