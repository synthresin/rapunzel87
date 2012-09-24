class Micropost < ActiveRecord::Base
	#attr_accessor	:name, :content, :user_id
    attr_accessible :name, :content

    belongs_to :user

    validates :content, :presence => true
end
