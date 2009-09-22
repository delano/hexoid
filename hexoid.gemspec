@spec = Gem::Specification.new do |s|
  s.name = "hexoid"
  s.rubyforge_project = 'hexoid'
  s.version = "0.2.1"
  s.summary = "Hexoid: Encode your object IDs like Ruby does."
  s.description = s.summary
  s.author = "Delano Mandelbaum"
  s.email = "delano@solutious.com"
  s.homepage = "http://github.com/delano/hexoid"
  
  s.extra_rdoc_files = %w[README.rdoc LICENSE.txt CHANGES.txt]
  s.has_rdoc = true
  s.rdoc_options = ["--line-numbers", "--title", s.summary, "--main", "README.rdoc"]
  s.require_paths = %w[lib]
  
  # = MANIFEST =
  # git ls-files
  s.files = %w(
  CHANGES.txt
  LICENSE.txt
  README.rdoc
  Rakefile
  hexoid.gemspec
  lib/hexoid.rb
  )

  
end
