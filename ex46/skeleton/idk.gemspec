# coding: utf-8
lib = File.expand_path('../lib',__FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "idk"
  spec.version       = '1.0'
  spec.date          = '2017-04-25'
  spec.authors       = ["Joey Zhou"]
  spec.email         = ["burninghot4jesus2005@gmail.com"]
  spec.summary       = %q{Don't know what to do}
  spec.description   = %q{As mention aboved, don't know}
  spec.homepage      = "http://domainforproject.com"
  spec.license       = "Company Name"

  spec.files          = ['lib/idk.rb']
  spec.executables     = ['idk']
  spec.test_files     = ['tests/test_idk.rb']
  spec.require_paths  = ["lib"]
end
