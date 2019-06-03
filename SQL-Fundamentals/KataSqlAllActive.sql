/* Create a simple SELECT query to display student information of all ACTIVE students.

TABLE STRUCTURE:
students
Id 	FirstName 	LastName 	IsActive

Note: IsActive (true or false) */


select * from students

Where isActive

/*-------------------------*/

DB.create_table :students do
  primary_key :Id
  String :FirstName
  String :LastName
  boolean:IsActive
end

students = DB[:students] # Create a dataset

4.times do
  students.insert(FirstName: Faker::Name.first_name, LastName: Faker::Name.last_name, IsActive: true)
end
6.times do
  students.insert(FirstName: Faker::Name.first_name, LastName: Faker::Name.last_name, IsActive: false)
end

results = run_sql

describe :students do
   it "should return 4 students" do
    expect(results.count).to eq 4
   end
end