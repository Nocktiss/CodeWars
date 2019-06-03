/* #Greetings Grasshopper!# Using only SQL, write a query that returns all rows in the custid, custname, and custstate columns from the customers table.

###Table Description for customers:###
Column 	Data Type 	Size 	Sample
custid 	  integer 	8 	4
custname  string 	50 	Anakin Skywalker
custstate string 	50 	Tatooine
custard   string 	50 	R2-D2 */



select custid, custname, custstate
from customers;

/*--------------------------*/

results = run_sql

describe :results do
  it "should return 20 items" do
    expect(results.count).to eq 20
  end
  
  it "should contain only 3 columns" do
    expect(results.first.keys.count).to eq 3
  end
  
  it "should not contain custard column" do
    expect(results.first.keys).not_to include(:custard)
  end
end