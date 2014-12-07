Gem::Specification.new do |gem|
  gem.name = "math-mct"
  gem.files = Dir.glob "lib/*.rb"
  gem.test_files = Dir.glob "spec/**/*.rb"
  gem.author = "Zachary Perlmutter"
  gem.summary = "Adds #mean, #mode, and #median to the Math module"
  gem.license = "MIT"
  gem.extra_rdoc_files = Dir.glob "*.md"
  gem.version = case ENV['TRAVIS']
    when false then rand
    when true
      if ENV['TRAVIS_TAG'] == "" then ENV['TRAVIS_BUILD_ID']
      else; ENV['TRAVIS_TAG']
      end
  end
end
        
  
