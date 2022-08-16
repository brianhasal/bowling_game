require_relative 'bowling-game' #Because they are both in the same folder

RSpec.describe BowlingGame do
  describe "#simple_test" do
    it "scores totalled for each value" do
      pins = [1,5,  4,4,  8,0,  5,3,  0,0,  4,5,  2,3,  8,1,  7,1,  1,1]
      subject = described_class.new #BowlingGame.new

      expect(subject.simple_test(pins)).to eq(63)
    end
  end

  describe "#simple_test" do
    it "scores totalled for each value" do
      pins = [1,5,  4,4,  8,'-',  5,3,  '-','-',  4,5,  2,3,  8,1,  7,1,  1,1]
      subject = described_class.new #BowlingGame.new

      expect(subject.simple_test(pins)).to eq(63)
    end
  end

  describe "#spares" do
    it "scores totalled including spares" do
      spins = [1,5,  4,4,  8,'/',  5,3,  '-','-',  4,5,  2,3,  8,'/',  7,1,  1,1]
      subject = described_class.new #BowlingGame.new

      expect(subject.spares(spins)).to eq(78)
    end
  end

  describe "#spares" do
    it "scores totalled including strikes" do
      strikes = [1,5,   4,4,    8,'/',    5,3,    'X',    4,5,    2,3,    8,'/',    7,1,    1,1]
      #           6     8 14    15 29     8 38    19 57   9 66    5 71    17 87     8 95    2 97
      subject = described_class.new #BowlingGame.new

      expect(subject.strikes_a(strikes)).to eq(97)
    end
  end

  describe "#run_mark" do
    it "scores totalled including running marks" do
      running_marks = [1,5,   4,4,    8,'/',    5,3,    'X',    4,'/',    2,3,    8,'/',    7,1,    1,1]
      #                 6     8 14    15 29     8 37    20 57   12 69     5 74    17 91     8 99    2 101
      subject = described_class.new #BowlingGame.new

      expect(subject.run_marks(running_marks)).to eq(101)
    end
  end

  describe "#run_strike" do
    it "scores totalled including running strikes" do
      running_strikes = [1,5,   4,4,    8,'/',    5,3,    'X',    'X',    2,3,    8,'/',    7,1,    1,1]
      #                  6      8 14    15 29     8 37    22 59   (10+2)  
      #                                                           15 74   5 79    17 96     8 104   2 106
      subject = described_class.new #BowlingGame.new

      expect(subject.run_strike(running_strikes)).to eq(106)
    end
  end
end

