class Matching < ApplicationRecord
belongs_to :user
belongs_to :matched_user, foreign_key:'matched_user_id', class_name:'User'
end
