# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "text2path"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["qhwa"]
  s.date = "2013-08-07"
  s.email = "qhwa@163.com"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md", "Gemfile.lock", "out.svg", "libpeerconnection.log", "Gemfile", "test.rb", "lib/ext", "lib/ext/savage", "lib/ext/savage/spec", "lib/ext/savage/spec/shared", "lib/ext/savage/spec/shared/direction.rb", "lib/ext/savage/spec/shared/coordinate_target.rb", "lib/ext/savage/spec/shared/point_target.rb", "lib/ext/savage/spec/shared/command.rb", "lib/ext/savage/spec/savage", "lib/ext/savage/spec/savage/parser_spec.rb", "lib/ext/savage/spec/savage/path_spec.rb", "lib/ext/savage/spec/savage/transformable_spec.rb", "lib/ext/savage/spec/savage/directions", "lib/ext/savage/spec/savage/directions/arc_to_spec.rb", "lib/ext/savage/spec/savage/directions/point_spec.rb", "lib/ext/savage/spec/savage/directions/vertical_to_spec.rb", "lib/ext/savage/spec/savage/directions/horizontal_to_spec.rb", "lib/ext/savage/spec/savage/directions/quadratic_curve_spec.rb", "lib/ext/savage/spec/savage/directions/cubic_curve_to_spec.rb", "lib/ext/savage/spec/savage/directions/close_path_spec.rb", "lib/ext/savage/spec/savage/directions/line_to_spec.rb", "lib/ext/savage/spec/savage/directions/move_to_spec.rb", "lib/ext/savage/spec/savage/sub_path_spec.rb", "lib/ext/savage/spec/savage_spec.rb", "lib/ext/savage/spec/spec_helper.rb", "lib/ext/savage/Rakefile", "lib/ext/savage/VERSION", "lib/ext/savage/savage.gemspec", "lib/ext/savage/LICENSE", "lib/ext/savage/lib", "lib/ext/savage/lib/savage", "lib/ext/savage/lib/savage/utils.rb", "lib/ext/savage/lib/savage/transformable.rb", "lib/ext/savage/lib/savage/directions", "lib/ext/savage/lib/savage/directions/quadratic_curve_to.rb", "lib/ext/savage/lib/savage/directions/arc_to.rb", "lib/ext/savage/lib/savage/directions/line_to.rb", "lib/ext/savage/lib/savage/directions/coordinate_target.rb", "lib/ext/savage/lib/savage/directions/point_target.rb", "lib/ext/savage/lib/savage/directions/cubic_curve_to.rb", "lib/ext/savage/lib/savage/directions/move_to.rb", "lib/ext/savage/lib/savage/directions/horizontal_to.rb", "lib/ext/savage/lib/savage/directions/close_path.rb", "lib/ext/savage/lib/savage/directions/vertical_to.rb", "lib/ext/savage/lib/savage/direction.rb", "lib/ext/savage/lib/savage/parser.rb", "lib/ext/savage/lib/savage/path.rb", "lib/ext/savage/lib/savage/sub_path.rb", "lib/ext/savage/lib/savage/direction_proxy.rb", "lib/ext/savage/lib/savage.rb", "lib/ext/savage/README.rdoc", "lib/text2path.rb", "lib/text2path", "lib/text2path/glyph.rb", "lib/text2path/version.rb", "lib/text2path/svg_path.rb", "lib/text2path/converter.rb", "lib/text2path/svg_font.rb"]
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
