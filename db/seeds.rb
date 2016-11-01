dictionary = File.open(File.join(Rails.root, 'db', 'dictionary.txt'))

puts "Patience grasshopper..."

Word.delete_all
dictionary.each do |words|
  words.each_line do |word|
    word.gsub!("\n", "")
    Word.create!(words: word)
  end
end

puts "Dictionary loaded!"
