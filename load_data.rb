
def all_authors(gem)
  authors = ((gem.authors ? gem.authors.delete_if { |a| a.nil? || a.empty? } : []) << (gem.author && !gem.author.empty? ? gem.author : '[noname]')).uniq
  authors.each_with_index do |author, index|
    authors[index] = '[invalid_name]' if author.include?("\n") # screw you, developers of tkk
    auhtors[index].gsub!('"', "\\\"") if author.include?('"') # screw you Andrew "A.I." Sitnik, author of microengine
  end
end

source_index = YAML.load(File.read('gems.yaml'))

source_index.gems.each do |key, gem|
  authors = all_authors(gem)
  puts authors
end



