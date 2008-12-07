y = YAML.load(File.read('./gems.yaml'))
y.gems.each do |yg|
  g = Gem.new
  g.name = yg.name
  y