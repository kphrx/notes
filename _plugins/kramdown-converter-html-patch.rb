module RemoveTrailingSlash
  def convert_standalone_image(el, indent)
    super(el, indent).gsub(/ \/>/, '>')
  end

  def convert_hr(el, indent)
    "#{' ' * indent}<hr#{html_attributes(el.attr)}>\n"
  end

  def convert_html_element(el, indent)
    super(el, indent).gsub(/ \/>/, '>')
  end

  def convert_br(_el, _indent)
    "<br>"
  end

  def convert_img(el, _indent)
    "<img#{html_attributes(el.attr)}>"
  end
end

module AddDataAttributesToHighlighter
  def convert_codeblock(el, indent)
    attr = el.attr.dup
    lang = extract_code_language!(attr)
    hl_opts = {}
    highlighted_code = highlight_code(el.value, el.options[:lang] || lang, :block, hl_opts)

    if highlighted_code
      add_syntax_highlighter_to_class_attr(attr, hl_opts[:lang])
      add_syntax_highlighter_options_to_data_attr(attr, hl_opts[:options])
      "#{' ' * indent}<div#{html_attributes(attr)}>#{highlighted_code}#{' ' * indent}</div>\n"
    else
      super(el, indent)
    end
  end

  def convert_codespan(el, _indent)
    attr = el.attr.dup
    lang = extract_code_language(attr)
    hl_opts = {}
    result = highlight_code(el.value, lang, :span, hl_opts)
    if result
      add_syntax_highlighter_to_class_attr(attr, hl_opts[:lang])
    else
      result = escape_html(el.value)
    end

    format_as_span_html('code', attr, result)
  end

  def add_syntax_highlighter_options_to_data_attr(attr, opts)
    opts = opts.transform_keys { |k| "data-#{k}" }
    attr.merge!(opts)
  end
end

Kramdown::Converter::Html.prepend(RemoveTrailingSlash)
Kramdown::Converter::Html.prepend(AddDataAttributesToHighlighter)
