require "the_eleven/svg_inliner"

TheEleven::SvgInliner.configure do |config|
  config.css_class = 'icon'
  config.path = "#{Rails.root}/app/assets/images/iconset.svg"
  config.aria = true
end
