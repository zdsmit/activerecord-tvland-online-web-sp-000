class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    all_actors = []
    self.actors.each do |actor|
      all_actors << actor.full_name
    end
    all_actors
  end

end
