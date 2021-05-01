source "https://rubygems.org"

ruby '2.7.1'
#ruby-gemset=kuuhaukku

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!
# gem "jekyll", "~> 4.0.0"

group :jekyll_plugins do
  gem "jekyll-sitemap"
  gem "github-pages"
  gem 'jekyll-seo-tag'
end


# These gems are included to remove a security alarms - but we're not actively using them and
# we're not using features like popups etc. that'd make us vulnerable.
gem "nokogiri", ">= 1.11.0.rc4"
gem "kramdown", ">= 2.3.0"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :install_if => Gem.win_platform?

gem 'reverse_markdown'