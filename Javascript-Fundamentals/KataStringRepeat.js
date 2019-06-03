/* Write a function called repeatStr which repeats the given string string exactly n times.

repeatStr(6, "I") // "IIIIII"
repeatStr(5, "Hello") // "HelloHelloHelloHelloHello" */


function repeatStr (n, s) {
    var a = [];
    while (a.length < n){
        a.push(s);
        console.log(a)
    }
    return a.join('');
}

//-----------------------------//

describe("Tests", function() {
    it ("Basic tests", function() {
      Test.assertSimilar(repeatStr(3, "*"), "***");
      Test.assertSimilar(repeatStr(5, "#"), "#####");
      Test.assertSimilar(repeatStr(2, "ha "), "ha ha ");
    });
  });