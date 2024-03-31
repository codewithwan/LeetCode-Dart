class Solution {
  bool isPalindrome(int x) {
    if (x < 0) {
        return false;
    }
    int reversed = 0;
    int original = x;
    while (x != 0) {
        int digit = x % 10;
        reversed = reversed * 10 + digit;
        x ~/= 10;
    }
    return original == reversed;
  }
}

// 1.	Kelas Solution memiliki satu metode bernama isPalindrome yang digunakan untuk memeriksa apakah
//    suatu bilangan merupakan palindrome atau tidak.
// 2.	Dalam metode isPalindrome, pertama-tama dilakukan pengecekan apakah bilangan x merupakan bilangan
//    negatif. Jika iya, maka langsung dikembalikan nilai false karena bilangan negatif tidak bisa men-
//    jadi palindrome.
// 3.	Selanjutnya, variabel reversed dan original diinisialisasi dengan nilai 0 dan x secara berturut-
//    turut. Variabel reversed akan digunakan untuk menyimpan bilangan yang sudah dibalik, sedangkan 
//    original untuk menyimpan nilai asli dari x.
// 4.	Dilakukan proses pembalikan bilangan dengan menggunakan sebuah perulangan while. Pada setiap iterasi, 
//    digit terakhir dari bilangan x diambil dengan menggunakan operasi modulo (%) dan dimasukkan ke dalam 
//    variabel reversed. Kemudian, digit terakhir tersebut dihilangkan dari x dengan melakukan operasi pembagian (~/=).
// 5.	Terakhir, setelah proses pembalikan selesai, dilakukan perbandingan antara bilangan asli (original) 
//    dengan bilangan yang sudah dibalik (reversed). Jika keduanya sama, maka bilangan tersebut merupakan palindrome, 
//    sehingga fungsi mengembalikan nilai true. Jika tidak sama, maka bilangan tersebut bukan palindrome, dan fungsi
//    mengembalikan nilai false.
