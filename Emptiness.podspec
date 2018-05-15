Pod::Spec.new do |s|
  s.name = 'Emptiness'
  s.version = '1.0.0'
  s.license = 'MIT'
  s.summary = 'A framework to simplify the use of empty values'
  s.homepage = 'https://github.com/harishkataria/Emptiness'
  s.authors = { 'Harish Kataria' => 'hkatariajob@gmail.com' }
  s.source = { :git => 'https://github.com/harishkataria/Emptiness.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'Source/**/*.swift'
end
