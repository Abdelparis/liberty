class JobCategory < ApplicationRecord
  SUB_CATEGORY = ['Yoga & pilates', 'Fitness']
  CATEGORY = ['Esthétique', 'Médecine douce', 'Spa & relaxation', 'Sport']
  validates :category, acceptance: { accept: CATEGORY }
end
