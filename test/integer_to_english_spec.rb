require '../integer_to_english'
require 'rspec'

describe Integer, "#to_eng" do
  it "returns one for 1" do
    -1.to_eng.should == 'negative one'
  end

  it "returns zero for 0" do
    0.to_eng.should == 'zero'
  end

  it "returns one quintillion for 10**18" do
    (10**18).to_eng.should == 'one quintillion'
  end

  it "returns one centillion for 10**303" do
    (10**303).to_eng.should == 'one centillion'
  end

  it "returns this HUGE string for this HUGE number" do
    1_002_003_004_005_006_007_008_009_010_011_012_013_014_015_016_017_018_019_020_021_030_040_050_060_070_080_090_100_101_001_002_003_004_005_006_007_008_009_010_011_012_013_014_015_016_017_018_019_020_021_030_040_050_060_070_080_090_100_101_001_002_003_004_005_006_007_008_009_010_011_012_013_014_015_016_017_018_019_020_021_030_040_050_060_070_080_090_100_101_001_002_003_004_005_006_007_008_009_010_011_012_013.to_eng.should == 'one thousand, two centillion, three novemnonagintillion, four septillion, five sextillion, six quintillion, seven quadrillion, eight trillion, nine billion, ten million, eleven thousand, twelve nonagintillion, thirteen octillion, fourteen septillion, fifteen sextillion, sixteen quintillion, seventeen quadrillion, eighteen trillion, nineteen billion, twenty million, twenty-one thousand, thirty octogintillion, forty novemseptuagintillion, fifty septillion, sixty sextillion, seventy quintillion, eighty quadrillion, ninety trillion, one hundred billion, one hundred one million, one thousand, two septuagintillion, three octillion, four septillion, five sextillion, six quintillion, seven quadrillion, eight trillion, nine billion, ten million, eleven thousand, twelve sexagintillion, thirteen novemquinquagintillion, fourteen septillion, fifteen sextillion, sixteen quintillion, seventeen quadrillion, eighteen trillion, nineteen billion, twenty million, twenty-one thousand, thirty quinquagintillion, forty octillion, fifty septillion, sixty sextillion, seventy quintillion, eighty quadrillion, ninety trillion, one hundred billion, one hundred one million, one thousand, two quadragintillion, three novemtrigintillion, four septillion, five sextillion, six quintillion, seven quadrillion, eight trillion, nine billion, ten million, eleven thousand, twelve trigintillion, thirteen quadrillion, fourteen trillion, fifteen billion, sixteen million, seventeen thousand, eighteen quatuorvigintillion, nineteen trevigintillion, twenty duovigintillion, twenty-one unvigintillion, thirty vigintillion, forty novemdecillion, fifty octodecillion, sixty septendecillion, seventy sexdecillion, eighty quindecillion, ninety quatuordecillion, one hundred tredecillion, one hundred one duodecillion, one undecillion, two decillion, three nonillion, four octillion, five septillion, six sextillion, seven quintillion, eight quadrillion, nine trillion, ten billion, eleven million, twelve thousand, thirteen'
  end

end