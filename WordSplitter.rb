class WorldSplitter
  include Enumerable

  attr_accessor :string

  def each
    string.split(" ").each do |word|
      yield word
    end
  end

end

splitter = WorldSplitter.new
splitter.string = "one two three four"

splitter.each do |word|
  puts word
end

splitter2 = WorldSplitter.new
splitter2.string = "how do you do"

p splitter2.find_all { |word| word.include?("d") }
p splitter2.reject { |word| word.include?("d") }
p splitter2.map{ |word| word.reverse }
