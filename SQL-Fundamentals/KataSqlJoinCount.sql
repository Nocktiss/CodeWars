/* For this challenge you need to create a simple SELECT statement that will return all columns from the people table, and join to the toys 
table so that you can return the COUNT of the toys

people table schema

    id
    name

toys table schema

    id
    name
    people_id */



SELECT p.*, COUNT(toy) AS toy_count
FROM people p
JOIN toys toy ON toy.people_id = p.id
GROUP BY p.id

/*-----------------------*/

results = run_sql

describe :items do
   it "should return 2 items" do
    expect(results.count).to eq 2
   end
   
   it "should return names" do
     results.each do |result|
       expect(result[:name]).to eq find_record(:people, result[:id]).name
     end
   end
   
   it "should return toy count" do
    results.each do |result|
      toys = find_records_by_people_id(:toys, result[:id])
      expect(result[:toy_count]).to eq toys.count
    end
   end
end