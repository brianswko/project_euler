Gem::Specification.new do |s|
  s.name        = 'project_euler'
  s.version     = '0.0.1'
  s.summary     = "Project Euler solutions"
  s.description = "Project Euler (https://projecteuler.net/)"
  s.authors     = ["Brian Ko"]
  s.email       = 'brianswko@gmail.com'
  s.files       = Dir["{lib}/**/*"]

  s.add_development_dependency 'pry'
  s.add_development_dependency 'rspec'
end
