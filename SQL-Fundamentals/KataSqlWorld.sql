/* Hello SQL!

Return a table with a single column named Greeting with the phrase 'hello world!'
Please use Data Manipulation Language and not Data Definition Language to solve this Kata */


SELECT 'hello world!' AS "Greeting";

/*---------------------*/

results = run_sql

describe :items do
   it "should return 1 item" do
    expect(results.count).to eq 1
   end
end

describe :columns do
    it "should return 1 columns" do
      expect(results.first.keys.count).to eq 1
    end
end