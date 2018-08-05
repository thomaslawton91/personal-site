activate :aria_current
activate :autoprefixer
activate :dotenv
activate :inline_svg

set :css_dir, "assets/stylesheets"
set :fonts_dir, "assets/fonts"
set :images_dir, "assets/images"
set :js_dir, "assets/javascripts"

page "/*.json", layout: false
page "/*.txt", layout: false
page "/*.xml", layout: false

require 'sprockets/es6'
activate :sprockets do |s|
  s.supported_output_extensions << '.es6'
end

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-89572461-1'
end

activate :directory_indexes

page "source/*", :layout => :layout

configure :development do
  activate :livereload do |reload|
    reload.no_swf = true
  end
end

configure :production do
  activate :asset_hash
  activate :gzip
  activate :minify_css
  activate :minify_html
  activate :minify_javascript
end
