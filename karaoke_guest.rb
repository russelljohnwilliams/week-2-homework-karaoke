class Guest

attr_reader(:name)
attr_accessor(:wallet, :songs_sung)

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @songs_sung = []

  end
end