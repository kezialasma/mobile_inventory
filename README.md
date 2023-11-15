<details>
<summary>TUGAS 8</summary> 

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!  
    Navigator.push() menambahkan halaman baru yang di-route ke bagian paling atas dari stack halaman, lalu, halaman saat ini berada pada stack dibawah halaman baru sehingga pengguna dapat menekan tombol 'Back' karena route halaman tidak diganti.  
    Sementara, Navigator.pushReplacement() mengganti route dari halaman saat ini menjadi route dari halaman yang baru pada bagian paling atas stack. Hal ini menyebabkan jika pengguna menekan tombol 'Back', maka pengguna akan keluar dari aplikasi.
2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!  
    Pada tugas ini, terdapat dua widget yang digunakan, yaitu   
    a. SingleChildLayout, diantaranya:  
    Align: Widget yang menyesuaikan posisi dan ukuran child-nya dalam diri sendiri.
    Padding: Mengatur padding pada child.  
    Transform: Menerapkan transformasi sebelum melukis child.  
    b. Multi-Child Layout yang terdiri dari:  
    Column: Menyusun daftar child widget dalam arah vertikal  
    Flow: Widget yang mengimplementasikan algoritma layout flow.  
    GridView: Daftar grid terdiri dari pola sel yang berulang yang disusun dalam layout vertikal dan horizontal.  
    IndexedStack: Stack yang menunjukkan satu child dari daftar child.  
    LayoutBuilder: Membangun pohon widget yang dapat bergantung pada ukuran widget orang tua.  
    ListBody: Widget yang menyusun child-nya secara berurutan sepanjang sumbu tertentu.  
    ListView: Daftar scrollable, linear dari widget.  
    Row: Menyusun daftar child widget dalam arah horizontal.  
    Stack: Kelas ini berguna jika Anda ingin menumpuk beberapa child dengan cara yang sederhana.
3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!  
    TextFormField untuk nama, jumlah, deskripsi, gambar: Masing-masing dari TextFormField diatas memiliki ketentuannya sendiri. Misal untuk 'nama', hanya akan menerima input berupa 'string', kemudian untuk 'jumlah' hanya akan menerima input berupa 'integer'. Selain itu, terdapat elemen ElevatedButton yang berfungsi untuk mengirim form ketika semua input sudah tervalidasi
4. Bagaimana penerapan clean architecture pada aplikasi Flutter?  
    Clean Architecture adalah desain perangkat lunak yang menggunakan prinsip "separation of concern" dengan cara memisahkan perangkat lunak dalam beberapa lapisan, untuk memisahkan bagian pengembangan dan bagian pemeliharaan. Lapisan-lapisan pada clean architecture terdiri dari:  
    a. Data Layer: Wujudnya bisa dalam bentuk API untuk memanggil local database atau server, juga bisa sebagai implementasi repositori  
    b. Feature Layer: Lapisan representasi aplikasi yang berisi UI serta event handlernya. Lapisan ini bisa ditampilkan dengan menggunakan widgets
    c. Domain Layer: Berfungsi untuk mengatur logika bisnis pada aplikasi  
    d. Resources Library: Menyimpan konfigurasi aset seperti gambar, font, warna  
    e. Shared Library: Menyimpan komponen yang bisa digunakan kembali, seperti navigasi, jaringan, dan library dari pihak ketiga.  
5. Implementasi checklist  
    a. Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru:  
    1. Membuat page baru untuk form  
    2. Membuat class form yang mengextend StatefulWidget  
    3. Membuat widget 'Form' dan menambahkan variabel ```_formKey```  
    4. Mengisi wiget Form dengan field yang diperlukan, yaitu ```final _formKey, string _name, int _amount, string _description```  
    5. Membuat widget ```Column()``` sebagai child dari SingleChildScrollView, TextFormField yang dibungkus oleh Padding sebagai children dari Column, crossAxisAlignment sebagai children dari Column untuk masing-masing variabel data, dan terakhir membuat tombol untuk ```Save```  

    b. Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama: Pada widget ShopItem di menu.dart, buat routing dibawah ScaffoldMessenger menggunakan Navigator.push() untuk di-route ke halaman form Tambah Item  

    c. Membuat sebuah drawer pada aplikasi:  
    1. Membuat file baru pada direktori widgets dan membuat struktur widget untuk drawer tersebut  
    2. Pada bagian routing, kita akan menambahkan ListTile, dimana ini akan menginisiasi bagian pada drawer yang akan me-route ke halama yang diinginkan ketika bagian tersebut diklik. Pada ListTile tersebut berisi ```leading``` yang dapat diisi const Icon, kemudian ada bagian ```title``` atau judul dari bagian tersebut, dan Navigator yang berada didalam onTap  
    3. Menghias header drawer didalam bagian const DrawerHeader()  
    4. Menambahkan drawer pada page yang diinginkan (misal, pada menu.dart) dengan memasukkan drawer sebagai parameter nilai drawer dari widget Scaffold pada menu.dart

</details>

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