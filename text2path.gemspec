# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "text2path"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["qhwa"]
  s.date = "2013-09-13"
  s.email = "qhwa@163.com"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md", "Gemfile.lock", "Gemfile", "lib/text2path.rb", "lib/text2path", "lib/text2path/glyph.rb", "lib/text2path/version.rb", "lib/text2path/svg_path.rb", "lib/text2path/converter.rb", "lib/text2path/svg_font.rb"]
  s.homepage = "https://github.com/qhwa/text2path"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "convert text into svg paths"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.6.0"])
      s.add_runtime_dependency(%q<htmlentities>, ["~> 4.3.1"])
    else
      s.add_dependency(%q<nokogiri>, ["~> 1.6.0"])
      s.add_dependency(%q<htmlentities>, ["~> 4.3.1"])
    end
  else
    s.add_dependency(%q<nokogiri>, ["~> 1.6.0"])
    s.add_dependency(%q<htmlentities>, ["~> 4.3.1"])
  end
end
