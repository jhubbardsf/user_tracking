module ApplicationHelper
  # Method to set page titles.
  def title(page_title)
    content_for(:title) { page_title }
  end
end
