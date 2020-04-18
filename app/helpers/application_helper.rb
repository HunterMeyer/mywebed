module ApplicationHelper
  def full_title(page_title)
    base_title = 'MyWebEd'
    if page_title.empty?
      "#{base_title} | Tracking your Progress Through Online Education Courses"
    else
      "#{page_title} | #{base_title}"
    end
  end

  def markdown(text)
    html     = Redcarpet::Render::HTML.new(prettify: true, hard_wrap: true)
    markdown = Redcarpet::Markdown.new(html, space_after_headers: true,
                                             fenced_code_blocks: true)
    markdown.render(text).html_safe
  end
end
