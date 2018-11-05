class Project < ApplicationRecord
    has_many_attached :images

    def small 
      return self.images.variant(resize: '300x300').processed
    end
end
