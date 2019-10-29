class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    all_actors = []
    self.actors.each do |actor|
      all_actors << actor
    end
    all_actors
  end

end
