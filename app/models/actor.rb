class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    all_roles = []
    self.characters.each do |role|
      all_roles << role.name
    end
    all_roles
  end

end
