/* It's pretty straightforward. Your goal is to create a function that removes the first and last characters of a string. 
You're given one parameter, the original string. You don't have to worry with strings with less than two characters. */


function removeChar(str) {
    return str.slice(1, -1);
 }

 //-------------------------//

 Test.describe("Tests", function(){
    Test.assertEquals(removeChar('country'), 'ountr');
    Test.assertEquals(removeChar('eloquent'), 'loquen');
    Test.assertEquals(removeChar('person'), 'erso');
    Test.assertEquals(removeChar('place'), 'lac');
});