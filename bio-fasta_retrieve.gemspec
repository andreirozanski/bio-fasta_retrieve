Gem::Specification.new do |s|
  s.name        = 'bio-fasta_retrieve'
  s.version     = '0.0.5'
  s.date        = '2015-08-13'
  s.summary     = "Retrieve DNA sequence from UCSC using given coordinates."
  s.description = "Gem that helps to retrieve DNA sequence from UCSC"
  s.authors     = ["Andrei Rozanski"]
  s.email       = 'rozanski.andrei@gmail.com'
  s.files       = ["lib/bio-fasta_retrieve.rb"]
  s.homepage    =
    'http://rubygems.org/gems/bio-fasta_retrieve.rb'
  s.license       = 'MIT'
  s.add_runtime_dependency 'bio', '~>1.5'
  s.add_runtime_dependency 'nokogiri', '~>1.6', '>= 1.6.6.2'
end
