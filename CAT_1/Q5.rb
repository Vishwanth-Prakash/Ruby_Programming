require 'fileutils'

class WordCounter
  def initialize(filename)
    @filename = filename
    @word_counts = {}
  end

  def analyze_word_usage
    read_file
    count_words
    output_results
  end

  private

  def read_file
    File.open(@filename, 'r') do |file|
      @text = file.read
    end
  end

  def count_words
    words = @text.downcase.gsub(/[^a-z\s]/, '').split
    words.each do |word|
      @word_counts[word] ||= 0
      @word_counts[word] += 1
    end
  end

  def output_results
    sorted_words = @word_counts.sort_by { |_word, count| -count }
    puts "Top 10 Most Frequent Words:"
    sorted_words[0..9].each do |word, count|
      puts "#{word}: #{count}"
    end
  end
end

# Example usage
filename = 'sample.txt'
word_counter = WordCounter.new(filename)
word_counter.analyze_word_usage