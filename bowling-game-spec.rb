require_relative 'bowling-game' #Because they are both in the same folder

RSpec.describe BowlingGame do
  describe "#simple_test" do
    it "scores totalled for each value" do
      pins = [1,5,  4,4,  8,0,  5,3,  0,0,  4,5,  2,3,  8,1,  7,1,  1,2]
      subject = described_class.new #BowlingGame.new

      expect(subject.simple_test(pins)).to eq(64)
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

  describe "#late_strike" do
    it "scores totalled including a late strike" do
      late_strike = [1,5,   4,4,    8,'/',    5,3,    'X',    'X',    2,3,    8,'/',    'X',    1, 1]
      #               6     8 14    15 29     8 37    22 59   (10+2)  
      #                                                       15 74   5 79    20 99     12 111  2 113
      subject = described_class.new #BowlingGame.new

      expect(subject.late_strike(late_strike)).to eq(113)
    end
  end

  describe "#extra_frames" do
    it "scores totalled including a extra frames" do
      endgame = [1,5,   4,4,    8,'/',    5,3,    'X',    'X',    2,3,    8,'/',    7,1,    'X',    5,4]
      #           6     8 14    15 29     8 37    22 59   (10+2)  
      #                                                    15 74  5 79    17 96     8 104   19 123  * *
      subject = described_class.new #BowlingGame.new

      expect(subject.extra_frames(endgame)).to eq(123)
    end
  end

  describe "#triple_x" do
    it "scores totalled including a extra frames & triple x" do
      infinity_war = [1,5,  4,4,    8,'/',    5,3,    'X',    'X',   'X',     8,'/',    7,1,    'X',    5,4]
      #               6     8 14    15 29     8 37    30 67   (10+10)
      #                                                       28 95  (10+8) 
      #                                                               20 115  17 132    8 140   19 159  * *
      subject = described_class.new #BowlingGame.new

      expect(subject.triple_x(infinity_war)).to eq(159)
    end
  end

  describe "#tricky_finish" do
    it "scores totalled including a extra frames & triple x & tricky finish" do
      kang = [1,5,  4,4,    8,'/',    5,3,    'X',    'X',   'X',     8,'/',    7,1,    'X',    'X', 'X']
      #               6     8 14    15 29     8 37    30 67   (10+10)
      #                                                       28 95  (10+8) 
      #                                                               20 115  17 132    8 140   30 170
      subject = described_class.new #BowlingGame.new

      expect(subject.tricky_finish(kang)).to eq(170)
    end
  end

  describe "#bowling" do
    it "scores totalled for perfect game" do
      perfect = ['X',  'X',  'X',  'X',  'X',  'X',  'X',  'X',  'X',  'X', 'X', 'X']
      subject = described_class.new #BowlingGame.new

      expect(subject.bowling(perfect)).to eq(300)
    end
  end
  
end

