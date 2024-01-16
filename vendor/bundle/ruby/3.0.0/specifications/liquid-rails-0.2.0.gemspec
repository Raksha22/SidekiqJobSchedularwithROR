# -*- encoding: utf-8 -*-
# stub: liquid-rails 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "liquid-rails".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.11".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chamnap Chhorn".freeze]
  s.date = "2018-03-16"
  s.description = "It allows you to render .liquid templates with layout and partial support. It also provides filters, tags, drops class to be used inside your liquid template.".freeze
  s.email = ["chamnapchhorn@gmail.com".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.3.5".freeze
  s.summary = "Renders liquid templates with layout and partial support".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 5.0.6"])
    s.add_runtime_dependency(%q<liquid>.freeze, ["~> 4.0.0"])
    s.add_runtime_dependency(%q<kaminari>.freeze, ["~> 1.1.1"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 5.0.6"])
    s.add_dependency(%q<liquid>.freeze, ["~> 4.0.0"])
    s.add_dependency(%q<kaminari>.freeze, ["~> 1.1.1"])
  end
end
