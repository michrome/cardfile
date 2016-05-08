class Card < ActiveRecord::Base

    def self.search( search )
      if search
        find( :all,
              :order => "title",
              :conditions => [ 'title LIKE ? OR body LIKE ?', "%#{ search }%", "%#{ search }%" ]
              )
      else
        self.order(:title)
      end
    end

end
