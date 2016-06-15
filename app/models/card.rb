class Card < ActiveRecord::Base
  validates :title, presence: true

  def self.search(search)
    if search
      self.where('body ~* ? OR title ~* ?', search, search).order(:title)
    else
      self.order(:title)
    end
  end

end
