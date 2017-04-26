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

  spec.files          = ['lib/ex47.rb']
  spec.executable     = ['bin/ex47']
  spec.test_files     = ['test/test_ex47.rb']
  spec.require_paths  = ["lib"]
end
