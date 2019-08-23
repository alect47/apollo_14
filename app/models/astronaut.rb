class Astronaut < ApplicationRecord
  has_many :astronaut_missions
  has_many :missions, through: :astronaut_missions

  validates_presence_of :name, :age, :job

  def self.average_age
    average(:age)
  end

  def mission_list
    mish = ""
    missions. do |mission|
      mish << "mission.title, ""
    end
    mish
    # Mission.order(title: :desc)
    # Mission.select(:title)
    # Mission.where(astronaut_missions:).pluck(:title)
  end
end
