class HtmlBlock < ActiveRecord::Base
  def self.render_blocks(path)
    where('exact_path = ? OR ? LIKE pattern_path', path, path)
  end
end
