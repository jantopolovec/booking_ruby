class Building < ApplicationRecord
    belongs_to :user
    has_many_attached :image 
    def self.search(search)
        # Title is for the above case, the OP incorrectly had 'name'
        where("ime LIKE ?", "%#{search}%")
      end
end
