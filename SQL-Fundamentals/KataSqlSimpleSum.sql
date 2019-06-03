/* For this challenge you need to create a simple SUM statement that will sum all the ages.
people table schema

    id
    name
    age

select table schema
    age_sum (sum of ages)
    NOTE: Your solution should use pure SQL. Ruby is used within the test cases to do the actual testing. */



SELECT SUM(age)
AS age_sum
FROM people

/*----------------------*/

DB.create_table :items do
  primary_key :id
  String :name
  Float :price
end

items = DB[:items] # Create a dataset

# Populate the table
items.insert(:name => 'a', :price => 10)
items.insert(:name => 'b', :price => 35)
items.insert(:name => 'c', :price => 20)

results = run_sql

describe :items do
   it "should return 3 items" do
    expect(results.count).to eq 3
   end
end