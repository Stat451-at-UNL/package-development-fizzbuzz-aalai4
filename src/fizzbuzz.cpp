#include <Rcpp.h>
using namespace Rcpp;

//' FizzBuzz in C++
//'
//' A C++ implementation of fizzbuzz that processes a range of values.
//'
//' @param a Lower bound of range
//' @param b Upper bound of range
//'
//' @return Character vector with fizzbuzz results
//'
//' @keywords internal
//' @export
// [[Rcpp::export]]
CharacterVector fizzbuzz_cpp(int a, int b) {
  int lower = std::min(a, b);
  int upper = std::max(a, b);
  int n = upper - lower + 1;
  
  CharacterVector result(n);
  
  for (int i = 0; i < n; i++) {
    int val = lower + i;
    bool div3 = (val % 3) == 0;
    bool div7 = (val % 7) == 0;
    
    if (div3 && div7) {
      result[i] = "fizzbuzz";
    } else if (div3) {
      result[i] = "fizz";
    } else if (div7) {
      result[i] = "buzz";
    } else {
      result[i] = std::to_string(val);
    }
  }
  
  return result;
}