class Skill < ApplicationRecord
  belongs_to :user_id
  belongs_to :job_category_id
end
