require "json"

Gem::Specification.new do |spec|
  spec.name                    = "my-own-jekyll-theme"
  spec.homepage                = "https://github.com/adriana-guzman/my-own-jekyll-theme"

  spec.metadata["plugin_type"] = "theme"

  spec.files                   = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(data|includes|layouts|sass)/|(LICENSE|README|CHANGELOG)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", ">= 3.7", "< 5.0"
  spec.add_runtime_dependency "jekyll-include-cache", "~> 0.1"

end
