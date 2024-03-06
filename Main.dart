import 'dart:async'; //Import operasi asynchronous

class Buku { // Mendefinisikan kelas 'Buku'
  String judul; // Properti 'judul' dari tipe String
  String penulis; // Properti 'penulis' dari tipe String

  Buku(this.judul, this.penulis); // Konstruktor untuk kelas 'Buku' yang menerima 'judul' dan 'penulis' sebagai parameter
}

class Perpustakaan { // Mendefinisikan kelas 'Perpustakaan'
  List<Buku> koleksiBuku = []; // Properti 'koleksiBuku' yang merupakan daftar objek dari kelas 'Buku'

  Future<void> tambahBuku(Buku buku) async { // Metode 'tambahBuku' yang menerima objek 'Buku' sebagai parameter
    var delay = Duration(seconds: 2); // Membuat objek 'Duration' dengan durasi 2 detik
    await Future.delayed(delay); // Menunda eksekusi selama durasi yang ditentukan
    koleksiBuku.add(buku); // Menambahkan buku ke dalam 'koleksiBuku'
    print('Buku "${buku.judul}" oleh ${buku.penulis} telah ditambahkan.\n'); // Menampilkan pesan bahwa buku telah ditambahkan
  }

  void tampilkanKoleksi() { // Metode 'tampilkanKoleksi' untuk menampilkan daftar buku dalam koleksi
    print('Daftar Buku:'); // Menampilkan judul daftar buku
    for (var buku in koleksiBuku) { // Looping melalui setiap buku dalam 'koleksiBuku'
      print('- ${buku.judul}, oleh ${buku.penulis}'); // Menampilkan judul dan penulis buku
    }
  }
}

void main() async { // Fungsi utama program
  var perpustakaan = Perpustakaan(); // Membuat objek 'Perpustakaan'
  await perpustakaan.tambahBuku(Buku('Hujan', 'Tere Liye')); // Menambahkan buku ke dalam perpustakaan
  perpustakaan.tampilkanKoleksi(); // Menampilkan daftar buku dalam perpustakaan
}
