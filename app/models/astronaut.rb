class Astronaut < ApplicationRecord
  validates_presence_of :name, :age, :job

  has_many :astronaut_missions
  has_many :missions, through: :astronaut_missions

  def self.average_age
    Astronaut.all.average(:age)
  end

  def show_missions(astronaut_id)
    Astronaut.find(astronaut_id).missions.map(&:title).sort
  end
end
