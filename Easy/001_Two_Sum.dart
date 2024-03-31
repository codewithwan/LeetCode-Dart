class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> map = {};
    for (int i = 0; i < nums.length; i++) {
        int complement = target - nums[i];
        if(map.containsKey(complement)) {
            return [map[complement]!, i];
        }
        map[nums[i]] = i;
    }
    return [];
  }
}

void main() {
    Solution solution = Solution();
    List<int> nums1 = [2, 7, 11, 15];
    int target1 = 9;
    List<int> result1 = solution.twoSum(nums1, target1);
    print("Indices for target $target1 in $nums1: $result1");
  }

// Fungsi twoSum menerima masukan sebuah list nums yang berisi bilangan bulat dan sebuah bilangan bulat target.
// Fungsi ini akan mengembalikan indeks dari dua bilangan dalam list tersebut yang jika dijumlahkan akan mengha-
// silkan nilai target.

// 1.	Pertama-tama, kita membuat sebuah map (peta) yang akan digunakan untuk menyimpan nilai bilangan beserta 
//    indeksnya. Kita akan memanfaatkan map ini untuk mencari bilangan yang bersesuaian dengan setiap bilangan
//    yang kita periksa.
// 2.	Selanjutnya, kita melakukan iterasi melalui list nums menggunakan perulangan for. Pada setiap iterasi, 
//    kita mencari nilai yang menjadi pelengkap dari bilangan saat ini agar jumlahnya menjadi target. Nilai
//    pelengkap ini dihitung dengan mengurangkan bilangan saat ini dari target.
// 3.	Jika nilai pelengkap tersebut sudah ada dalam map (artinya, ada di antara bilangan sebelumnya), maka 
//    kita langsung mengembalikan indeks bilangan tersebut dan bilangan saat ini.
// 4.	Jika nilai pelengkap belum ada dalam map, kita simpan bilangan saat ini beserta indeksnya ke dalam map. 
//    Ini berguna untuk pencarian di iterasi berikutnya.
// 5.	Jika setelah iterasi selesai tidak ditemukan pasangan bilangan yang jumlahnya sama dengan target, maka
//    kita mengembalikan list kosong karena tidak ada solusi yang ditemukan.
