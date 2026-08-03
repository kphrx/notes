source 'https://rubygems.org'

ruby file: ".ruby-version"

gem "jekyll", "~> 4.4"

group :production, :jekyll_plugins do
  #gem "jekyll-remote-theme", "~> 0.4" # to use GitHub-hosted themes

  ## primer dependencies
  gem "jekyll-github-metadata", "~> 2.16" # GitHub metadata
  gem "jekyll-seo-tag", "~> 2.9" # Site metadata

  ## Markdown converter for GitHub Flavored Markdown
  # gem "jekyll-commonmark-ghpages", "~> 2.0"

  gem "jekyll-feed", "~> 0.16" # RSS Atom feed
  gem "jekyll-sitemap", "~> 1.4" # XML sitemap

  gem "jekyll-titles-from-headings", "~> 0.5" # Page title

  # gem "jekyll-paginate", "~> 1.1" # Pagination
  gem "jekyll-paginate-v2", "~> 3.0"

  gem "jekyll-default-layout", "~> 0.2" # Automatically sets layout

  gem "jekyll-relative-links", "~> 0.8" # Relative links to markdown file
  gem "jekyll-redirect-from", "~> 0.16" # Redirection from another posts

  # gem "jekyll-readme-index", "~> 0.3" # README to index.html
  # gem "jekyll-optional-front-matter", "~> 0.3" # All markdown files convert to html

  # gem "jekyll-mentions" "~> 1.6" # `@mention` format

  gem "jekyll-octicons" # GitHub's icons tag
  # gem "jemoji", "~> 0.12" # GitHub's emoji codes
  # gem "jekyll-avatar", "~> 0.8" # GitHub user's avatar tag

  # gem "jekyll-gist", "~> 1.5" # Gist embeds tag

  # gem "jekyll-include-cache", "~> 0.2" # Cache of Liquid includes for build

  gem "jekyll-last-modified", "~> 1.0"
end

group :development, :test do
  gem "faraday-retry", "~> 2.3"
  gem 'dotenv', "~> 3.2"
  gem "webrick", "~> 1.9"
  gem "jekyll-compose", "~> 0.12"
end
