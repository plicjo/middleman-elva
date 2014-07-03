###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
 activate :automatic_image_sizes
# Index pages inside directories will be that directory's home page
 activate :directory_indexes

# Reload the browser automatically whenever files change
 configure :development do
   activate :livereload
 end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
   activate :minify_javascript

  # Enable cache buster [Disable this if this will be migrated to Wordpress/non-static]
   activate :asset_hash

  # Use relative URLs
   activate :relative_assets

  # Favicon and Apple Touch Icon Generator
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

  # Image Optimization
   activate :imageoptim

  # Gzip Compression
   # activate :gzip

  # Or use a different image path
  # set :http_prefix, "/Content/images/"

end