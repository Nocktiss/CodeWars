/* In your application, there is a section for adults only. 
need to get a list of names and ages of users from the users table, who are 18 years old or older.

users table schema

    name
    age

NOTE: Your solution should use pure SQL. Ruby is used within the test cases to do the actual testing. */


select name, age
from users
limit 4 offset 1

/*-------------------*/

DB.create_table :items do
  primary_key :id
  String :name
  Float :price
end

items = DB[:items] # Create a dataset

items.insert(:name => 'a', :price => 10)
items.insert(:name => 'b', :price => 35)
items.insert(:name => 'c', :price => 20)

results = run_sql

describe :items do
   it "should return 3 items" do
    expect(results.count).to eq 3
   end
end