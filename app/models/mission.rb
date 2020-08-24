class Mission < ApplicationRecord
  belongs_to :job_category_id
  belongs_to :user_id
end
