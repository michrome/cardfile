class Card < ActiveRecord::Base

  def self.search(search)
    puts search
    if search
      self.where("to_tsvector(title || ' ' || body) @@ to_tsquery(?)", search).order(:title)
    else
      self.order(:title)
    end
  end

end
