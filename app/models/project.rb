class Project < ApplicationRecord
    has_many_attached :mobile_images
    has_many_attached :desktop_images

    def small
      return self.images.variant(resize: '300x300').processed
    end
end
