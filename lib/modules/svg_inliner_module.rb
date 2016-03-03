module SvgInlinerModule

  def get_file(file)
    Nokogiri::HTML(File.read("#{Rails.root}#{file}"))
  end

  def get_icon(icon, file)
    doc = get_file(file)
    doc.css("symbol[id='" + icon + "']")
  end

  def svg_icon(icon, path = '/public/test.svg', options = {})
    symbol = get_icon(icon, path)

    options = {
      class: 'icon',
      viewbox: symbol.attr('viewbox')
    }.merge(options)

    content_tag(:svg, class: options[:class], viewBox: options[:viewbox]) do
      symbol.children.to_html.html_safe
    end
  end

end
