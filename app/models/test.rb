class Test
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :time, type: Integer

  validates_presence_of :title , :time

    before_create :upcase



  protected
  
  def upcase
    self.title = self.title.upcase
  end



end
