# coding: utf-8
lib = file.expand_path(../lib',__FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

GEM::Specification.new do |spec|
  spec.name = "name"
  spec.version = '1.0'
  spec.authors       = ["Joey Zhou"]
  spec.email         = ["burninghot4jesus2005@gmail.com"]
  spec.summary       = %q{Short Summary}
  spec.description   = %q{Longer description}
  spec.homepage      = "http://domainforproject.com"
  spec.license        = "Company Name"

  spec.files          = ['lib/Lexicon.rb']
  spec.executable     = ['bin/Lexicon']
  spec.test_files     = ['test/test_Lexicon.rb']
  spec.require_paths  = ["lib"]
end
