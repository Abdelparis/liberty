class JobCategory < ApplicationRecord
  SUB_CATEGORY = ['Yoga', 'Pilates', 'Fitness', 'Coiffure', 'Barbier', 'Manucure', 'Massage', 'Pédicure']
  CATEGORY = ['Esthétique', 'Médecine douce', 'Spa & relaxation', 'Sport']
  validates :category, acceptance: { accept: CATEGORY }
  validates :name, acceptance: { accept: SUB_CATEGORY }
end
