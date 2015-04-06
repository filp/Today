module TemplateHelper
  def title(title)
    content_for(:page_title, title)
  end

  def fancy_quote(text)
    content_tag(:span, "“", class: "fancy-quote") +
    text.html_safe +
    content_tag(:span, "”", class: "fancy-quote")
  end
end
