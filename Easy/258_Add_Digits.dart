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

// 1.	Fungsi addDigits menerima satu parameter bernama num, yang merupakan bilangan bulat.
// 2.	Fungsi menggunakan perulangan while untuk memproses bilangan hingga hasilnya menjadi
//    satu digit.
// 3.	Pada setiap iterasi, jika nilai num masih lebih besar atau sama dengan 10, artinya 
//    masih terdapat lebih dari satu digit, maka proses penjumlahan dilakukan.
// 4.	Di dalam loop pertama, variabel sum diatur menjadi 0. Kemudian, dalam loop kedua, 
//    digit terakhir dari num diambil menggunakan operasi modulo (num % 10) dan ditambahkan 
//    ke variabel sum. Setelah itu, digit terakhir tersebut dihapus dari num dengan membaginya 
//    dengan 10 menggunakan operator pembagian integer (num ~/= 10).
// 5.	Setelah semua digit telah dijumlahkan dalam variabel sum, nilai num diatur ulang menjadi 
//    nilai dari sum.
// 6.	Proses ini terus berulang hingga num memiliki nilai kurang dari 10, yang menandakan bahwa 
//    hasilnya telah menjadi satu digit.
// 7.	Akhirnya, nilai num yang telah menjadi satu digit tersebut dikembalikan sebagai hasil dari fungsi.
