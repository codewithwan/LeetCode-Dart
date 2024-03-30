class Solution {
  List<int> plusOne(List<int> digits) {
    int n = digits.length;
    digits[n-1] += 1;
    for (int i = n - 1; i >= 0; i--) {
        if(digits[i] < 10) {
            return digits;
        } else {
            digits[i] = 0;
            if (i == 0) {
                digits.insert(0,1);
                return digits;
            }
            digits[i-1] += 1;
        }
    }
    return digits;
  }
}