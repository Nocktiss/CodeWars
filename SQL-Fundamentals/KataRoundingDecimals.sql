/* Given the following table 'decimals':

** decimals table schema **

    id
    number1
    number2

Return a table with two columns (number1, number2) where the values in number1 
have been rounded down and the values in number2 have been rounded up. */



SELECT FLOOR(number1) as number1, 
CEILING(number2) as number2
FROM decimals

/*-----------------------*/

results = run_sql

describe :query do
  describe "should contain keywords" do
    it "should contain SELECT" do
      expect($sql.upcase).to include("SELECT")
    end

    it "should contain FROM" do
      expect($sql.upcase).to include("FROM")
    end
  end

  describe :columns do
    it "should return 2 columns" do
      expect(results.first.keys.count).to eq 2
    end
    
    it "should return a number1 column" do
      expect(results.first.keys).to include(:number1)
    end
    
    it "should return a number2 column" do
      expect(results.first.keys).to include(:number2)
    end
 end
end