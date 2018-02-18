class HtmlBlocksHookListener < Redmine::Hook::ViewListener
  render_on :view_layouts_base_body_bottom, partial: 'html_blocks/html_blocks'
end
