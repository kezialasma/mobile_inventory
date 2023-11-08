<details>
<summary>TUGAS 7</summary>  
1.  Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?  
    a. Stateful Widget: Stateful Widget sifatnya dinamis, dapat berubah ketika adanya user memberikan trigger agar terjadinya suatu event yang mengarahkan widget menerima data dari user (bergantung pada state). Contoh dari Stateful Widget adalah Radio, Checkbox, TextField.  
    b. Stateless Widget: Stateless Widget sifatnya tidak berubah atau tidak bergantung kepada state tertentu. Contoh dari Stateless Widget adalah Icon dan Text  

2.  Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.  
    Pada `menu.dart`, widget yang saya gunakan adalah:  
    a. `Scaffold`: Membuat layout utama sebagai tampilan layar pada aplikasi Flutter.  
    b. `AppBar`: Berfungsi untuk menampilkan konteks halaman, misal, judul halaman.
    c. `SingleChildScrollView`: Scrolling pada child widgetnya jika child tersebut melampaui batas layar  
    d. `Padding`: Mengatur padding pada child widgetnya dengan memberikan ruang kosong disekitarnya.  
    e. `Column`: Widget layout yang menampilkan child widgetnya secara vertikal (dalam kolom).  
    f. `Text`: Menampilkan string text sesuai dengan modifikasi yang diinginkan.  
    g. `GridView`: Menampilkan widget-widgetnya dalam bentuk grid. Dalam kasus ini, `GridView.count` digunakan untuk membuat grid dengan jumlah kolom yang ditentukan.  
    h. `InkWell`: Widget yang menanggapi sentuhan dari pengguna. Dalam kasus ini, digunakan untuk menanggapi tap dengan menampilkan `SnackBar`.  
    i. `Container`: Widget untuk menjadi container untuk menampun konten-konten pada container.  
    j. `Center`: Menampilkan child widget pada posisi tengah.  
    k. `Icon`: Menampilkan simbol dari set ikon yang diberikan.  
    l. `SnackBar`: Feedback yang muncul di bagian bawah layar untuk memberikan pesan singkat kepada pengguna ketika terjadi sebuah interaksi pada InkWell  
    m. `Material`: Memberikan efek visual pada child widgetnya berdasarkan Material Design.  

3.  Implementasi Checklist:  
    a. Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya:  
        1. Melakukan instalasi Flutter dan IDE  
        2. Masuk ke direktori tempat ingin menyimpan proyek flutter, kemudian memasukkan prompt:  
        ```flutter create <APP_NAME>``` kemudian ```cd <APP_NAME>``` dimana pada app ini saya menggunakan app name ```mobile_directory```
        3. Untuk memastikan bahwa program Flutter telah terinstall, maka jalankan command ```flutter run -d chrome```   
    b. Membuat tiga tombol sederhana dengan ikon dan teks untuk ```Lihat Item```, ```Tambah Item```, ```Logout```  
        1. Membuat class untuk tipe-tipe item serta define tipe dan constructornya.  
        2. Menambahkan barang-barang yang ingin dijual dibawah syntax ```MyHomePage({Key? key}) : super(key: key);```, contohnya:  
        ```  
        final List<ShopItem> items = [    
            ShopItem("Lihat Produk", Icons.checklist),    
            ShopItem("Tambah Produk", Icons.add_shopping_cart),    
            ShopItem("Logout", Icons.logout),    
            ];  
        ```  
        3. Pada widget build, tambahkan wiget-widget yang akan kita gunakan (tertera pada nomor 2)  
    c. Memunculkan Snackbar dengan tulisan ```Kamu telah menekan tombol [item]```  
        1. Membuat class ShopCard yang mengextend subclass Stateless Widget serta menginisiasi tipe ```final ShopItem item;``` dan constructor ```const ShopCard(this.item, {super.key});```. Langkah ini bertujuan untuk menginisiasi card pada item
        2. Mengisi Widget build dengan elemen-elemen yang akan ditampilkan pada card seperti ```child: Container``` untuk membuat container yang menyimpan Icon dan Text
        3. Untuk memunculkan Snackbar, pertama kita akan menginisiasi area yang sensitif terhadap sentuhan, yaitu ```child: InkWell(onTap (); {}``` dimana snackbar akan muncul ketika pengguna memberikan sentuhan ```onTap```
        4. Untuk memunculkan message dari Snackbar maka kita bisa mengisi kurung kurawal pada ```onTap``` dengan syntax berikut:  
        ```  
        ScaffoldMessenger.of(context)  
        ..hideCurrentSnackBar()  
        ..showSnackBar(SnackBar(  
        content: Text("Kamu telah menekan tombol ${item.name}!")));  
        ```
</details>