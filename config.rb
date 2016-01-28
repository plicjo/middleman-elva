# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes
# Index pages inside directories will be that directory's home page
activate :directory_indexes

# Reload the browser automatically whenever files change
 configure :development do
   activate :livereload
 end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Build-specific configuration
configure :build do
  activate :asset_hash
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
    activate :favicon_maker, :icons => {
        "favicon_template.png" => [
          { icon: "apple-touch-icon-152x152-precomposed.png" },
          { icon: "apple-touch-icon-114x114-precomposed.png" },
          { icon: "apple-touch-icon-72x72-precomposed.png" },
          { icon: "apple-touch-icon-precomposed.png", size: "57x57" },
          { icon: "favicon.png", size: "16x16" },
          { icon: "favicon.ico", size: "64x64,32x32,24x24,16x16" },
        ]
    }

  # Gzip Compression
  # activate :gzip

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
