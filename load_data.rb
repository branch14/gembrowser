
def all_authors(gem)
  authors = ((gem.authors ? gem.authors.delete_if { |a| a.nil? || a.empty? } : []) << (gem.author && !gem.author.empty? ? gem.author : '[noname]')).uniq
  authors.each_with_index do |author, index|
    authors[index] = '[invalid_name]' if author.include?("\n") # screw you, developers of tkk
    authors[index].gsub!('"', "\\\"") if author.include?('"') # screw you Andrew "A.I." Sitnik, author of microengine
  end
  authors
end

source_index = YAML.load(File.read('gems.yaml'))

source_index.gems.each do |key, gem|
    puts gem.name
    authors = all_authors(gem)
    p authors
    g = Gemm.find_or_create_by_name(gem.name)
    g.authors << authors.map{|a| Author.find_or_create_by_name(a)}
    dependencies = gem.dependencies.map{|dep| dep.is_a?(Gem::Dependency) ? dep.name : dep.first }
    p dependencies
    g.dependees << dependencies.map{|d| Gemm.find_or_create_by_name(d)}
    g.save
end



