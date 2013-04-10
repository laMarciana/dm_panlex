Gem::Specification.new do |s|
   s.name = 'dm_panlex'
   s.version = '0.1.0'
   s.summary = 'Data mapper models for the Panlex database'
   s.description = 'https://github.com/laMarciana/dm_panlex/'
   s.license = 'GPL3'
   s.homepage = 'https://github.com/laMarciana/dm_panlex/'
   s.authors = ['Marc Busqué']
   s.email = 'marc@lamarciana.com'
   s.files = `git ls-files`.split("\n")

   s.add_runtime_dependency "data_mapper", "~>1.2"

   s.add_development_dependency "rspec", "~>2.11"
   s.add_development_dependency "dm-rspec", "~>0.2"
end
