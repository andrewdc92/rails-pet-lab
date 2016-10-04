class Pet < ActiveRecord::Base
  # TODO: associate with owner
  belongs_to :owner, optional: true

  validates :name, presence: true, length: {maximum: 255}
  validates :breed, presence: true

  validates :date_of_birth_cannot_be_in_the_future

  def date_of_birth_cannot_be_in_the_future
    if date_of_birth.present? && date_of_birth > Date.today
    errors.add(:date_of_birth, "cannot be in the future!")
  end
end

  # calculates age of pet in years
  def age
    # stretch
  end

end
