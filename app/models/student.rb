class Student < ActiveRecord::Base
	has_many :registrations
	has_many :courses, through: :registrations

  validates :full_name, presence: true
  validates :email, presence: true, length: { minimum: 6, maximum: 256}
  validates :age, numericality: { only_integer: true} 

  # before_create :clean_up_profession

	scope :renee, -> { where full_name: 'Renee'}
	# scope :xyz, -> { where favorite_ice_cream_flavor: 'xyz'}  came out in week 3 end?
	scope :names, -> { pluck :full_name}

	#def clean_up_profession
  #  self.profession = "Ice cream Wrangler Clown"
	#end



end
