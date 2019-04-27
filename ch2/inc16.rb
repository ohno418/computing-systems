require_relative './add16'

module Inc16
  class << self
    def run(a)
      Add16.run(
        a,
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]
      )
    end
  end
end
