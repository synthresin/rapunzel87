class Micropost < ActiveRecord::Base
	#attr_accessor	:name, :content, :user_id
    attr_accessible :name, :content
end
