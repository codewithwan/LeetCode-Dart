class Solution {
  int removeElement(List<int> nums, int val) {
    int k =0;
    for(int i=0; i< nums.length; i++) {
        if(nums[i] != val){
            nums[k] = nums[i];
            k++;
        }
    }
    return k;
  }
}

void main() {
  List<int> nums = [3, 2, 2, 3]; // Example array
  int val = 3; // Example value to remove
  Solution sol = Solution();
  int k = sol.removeElement(nums, val);
  
  print("Number of elements after removing $val: $k");
  print("Remaining elements:");
  for (int i = 0; i < k; i++) {
    print(nums[i]);
  }
}

// 1.	Fungsi removeElement digunakan untuk menghapus semua kemunculan nilai yang diberikan 
//    val dari array nums dan mengembalikan jumlah elemen yang tersisa setelah penghapusan.
// 2.	Dalam fungsi removeElement, nilai k digunakan untuk melacak jumlah elemen yang tidak  
//    sama dengan val.
// 3.	Selama iterasi melalui array nums, setiap kali ditemukan elemen yang tidak sama dengan 
//    val, nilai tersebut dipindahkan ke posisi k dalam array nums dan nilai k ditingkatkan.
// 4.	Setelah iterasi selesai, fungsi mengembalikan nilai k.
// 5.	Dalam fungsi main, contoh array nums dan nilai val diberikan.
// 6.	Fungsi removeElement dipanggil dengan array nums dan nilai val.
// 7.	Hasilnya dicetak, yaitu jumlah elemen yang tersisa setelah penghapusan dan elemen-elemen yang tersisa.
