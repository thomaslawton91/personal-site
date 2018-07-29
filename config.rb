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

page "source/*", :layout => :content_layout

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
