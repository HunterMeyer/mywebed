class Note < ActiveRecord::Base
  belongs_to :course

  def markdown
    html = Redcarpet::Render::HTML.new(prettify: true, hard_wrap: true)
    Redcarpet::Markdown.new(html, space_after_headers: true, fenced_code_blocks: true).render(self.content)
  end
end
