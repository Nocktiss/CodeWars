/* For this challenge you need to create a simple SELECT statement that will return all columns from the people table WHERE their age is over 50
people table schema

    id
    name
    age

You should return all people fields where their age is over 50 and order by the age descending
    NOTE: Your solution should use pure SQL. Ruby is used within the test cases to do the actual testing.
    NOTE 2: Don't end your query with a semicolon. */



SELECT age, name
FROM people
where age > 50
ORDER BY age DESC

/*----------------------------*/

results = run_sql

describe :items do
   it "should return people with age over 50" do
     record_count = get_all_records(:people).count
     expect(results.count).to eq record_count
   end
   
   it "should return names" do
     results.each do |result|
       expect(result[:name]).to eq find_record(:people, result[:id]).name
     end
   end