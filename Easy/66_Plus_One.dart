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

// 1.	Kelas Solution memiliki satu metode bernama plusOne yang digunakan untuk menambahkan 1 
//    pada sebuah bilangan yang direpresentasikan dalam bentuk array.
// 2.	Dalam metode plusOne, pertama-tama, kita mendapatkan panjang array digits dan menyimpan-
//    nya dalam variabel n.
// 3.	Kemudian, kita menambahkan 1 pada digit paling akhir (paling tidak signifikan) dari array digits.
// 4.	Selanjutnya, dilakukan iterasi dari digit paling akhir ke digit paling awal menggunakan perulangan for. 
//    Pada setiap iterasi, dilakukan pengecekan apakah digit saat ini kurang dari 10. Jika iya, tidak ada 
//    carry-over yang diperlukan, sehingga kembalikan array digits yang telah dimodifikasi.
// 5.	Jika digit saat ini adalah 10, artinya perlu dilakukan carry-over ke digit sebelumnya. Digit saat ini 
//    diatur menjadi 0, dan kemudian carry-over dilakukan ke digit sebelumnya.
// 6.	Jika iterasi mencapai digit paling awal (indeks 0) dan masih perlu dilakukan carry-over, tambahkan digit 
//    1 di depan array digits.
// 7.	Setelah iterasi selesai, kembalikan array digits, yang mungkin telah dimodifikasi jika terjadi carry-over 
//    pada digit paling signifikan.
