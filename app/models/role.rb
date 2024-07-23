class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map(&:actor)
  end

  def locations
    self.auditions.map(&:location)
  end

  def lead
    lead = self.auditions.select {|audition| audition.hired}
    lead.empty? ? "no actor has been hired for this role" : lead.first
  end

  def understudy
    lead = self.auditions.select {|audition| audition.hired}
    lead.second.nil? ? "no actor has been hired for understudy for this role" : lead.second
  end
end
