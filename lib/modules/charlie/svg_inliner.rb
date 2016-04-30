# module Charlie::SvgInliner
#
#   def svg_icon(icon, options = {})
#     options = {
#       class: 'icon',
#       path: "#{Rails.root}/app/assets/images/iconset.svg",
#       aria: true
#     }.merge(options)
#
#     symbol = get_icon(icon, options[:path])
#     options[:viewbox] = symbol.attr('viewbox')
#
#     content_tag(:svg, set_svg_opts(symbol, options)) do
#       symbol.children.to_html.html_safe
#     end
#   end
#
#
#   private
#
#   def get_file(file)
#     Nokogiri::HTML(File.read(file))
#   end
#
#   def get_icon(icon, file)
#     doc = get_file(file)
#     symbol = doc.css("symbol[id='" + icon + "']")
#
#     if symbol.blank?
#       symbol = get_file("#{Rails.root}/lib/modules/charlie/missing.svg").css("symbol")
#       puts "Couldn't find icon: #{icon} at: #{file}! Check spelling and make sure there's a <symbol> called #{icon} at the specified location."
#     end
#
#     symbol
#   end
#
#   def set_svg_opts(symbol, options)
#     svg_opts = {}
#
#     if options[:aria]
#       aria_title = symbol.css("title").text
#       unless aria_title.blank?
#         aria_opts = { label: aria_title }
#         svg_opts = {
#           aria: aria_opts,
#           role: 'img'
#         }
#       end
#     end
#
#     {
#       class: options[:class],
#       viewBox: options[:viewbox]
#     }.merge(svg_opts)
#   end
#
# end
