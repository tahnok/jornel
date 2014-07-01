class Entry < ActiveRecord::Base
  before_create :set_title

  def set_title
    self.title = Time.now.strftime('%F') if self.title.blank?
  end
end
