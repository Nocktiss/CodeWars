/* Given a demographics table in the following format:

** demographics table schema **

    id
    name
    birthday
    race

you need to return the same table where all letters are lowercase in the race column. */


SELECT *, LOWER(race) AS race
FROM demographics

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
    it "should return 4 column" do
      expect(results.first.keys.count).to eq 4
    end
    
    it "should return a race column" do
      expect(results.first.keys).to include(:race)
    end

    it "should return a name column" do
      expect(results.first.keys).to include(:name)
    end
  end
end