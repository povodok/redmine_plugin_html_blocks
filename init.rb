Redmine::Plugin.register :html_blocks do
  name 'Html Blocks plugin'
  author 'Povod Vitalii'
  description 'Add blocks of html-code to any page of Redmine system'
  version '0.0.1'
  url 'https://github.com/povodok/redmine_plugin_html_blocks'
  author_url 'https://github.com/povodok'

  menu :application_menu,
       :html_blocks,
       { controller: 'html_blocks', action: 'index' },
       caption: 'HtmlBlocks'
end

require_dependency 'html_blocks_hook_listener'
