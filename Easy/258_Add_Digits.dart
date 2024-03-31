class Solution {
  int addDigits(int num) {
    while(num >= 10) {
      int sum = 0;
      while(num >0 ){
        sum += num % 10;
        num ~/= 10;
      }
      num = sum;
    }
    return num;
  }
}

void main() {
  Solution res = Solution();
  int results = res.addDigits(196);
  print(results);
}