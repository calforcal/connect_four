require "./lib/player"

RSpec.describe Player do
  before(:each) do
    @player = Player.new("Myles")
  end

  describe "#initialize" do
    it "initializes" do
      expect(@player).to be_an_instance_of(Player)
      expect(@playern.name).to eq("Myles")
    end
  end

  describe "#has lost" do
    it "can loose" do
      expect(@player.has_lost?).to eq(false)
      @player.has_lost = true
      expect(@player.has_lost?).to eq(true)
    end
  end
end

