import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.black),
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(8),
        color: Colors.white,
        child: ListView(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blueGrey, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Selamat Datang",
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        hintText: "Masukkan Username",
                        hintStyle: TextStyle(
                            fontFamily: 'Source Sans Pro', color: Colors.blue),
                        labelText: "Username",
                        labelStyle: TextStyle(
                            fontFamily: 'Source Sans Pro', color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                        hintText: "Masukkan Password",
                        hintStyle: TextStyle(
                            fontFamily: 'Source Sans Pro', color: Colors.blue),
                        labelText: "Password",
                        labelStyle: TextStyle(
                            fontFamily: 'Source Sans Pro', color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Route pindah = MaterialPageRoute(
                        builder: (context) => Halamanlist(),
                      );
                      Navigator.push(context, pindah);
                    },
                    child: Text("Login")),
              )
            ])
          ],
        ),
      ),
    );
  }
}

class Halamanlist extends StatefulWidget {
  const Halamanlist({super.key});

  @override
  State<Halamanlist> createState() => _HalamanlistState();
}

class Laptop {
  final String nama;
  final String harga;
  final String deskripsi;
  final String urllaptop;

  const Laptop({
    required this.nama,
    required this.harga,
    required this.deskripsi,
    required this.urllaptop,
  });
}

class _HalamanlistState extends State<Halamanlist> {
  List<Laptop> laptops = [
    const Laptop(
        nama: 'Dell Alienware M15',
        harga: 'Rp 47.840.000',
        deskripsi:
            'Processor AMD Ryzen R7 5800H, RAM 32GB DDR4, SSD 1TB, VGA NVIDIA GeGorce RTX3060 6GB, Konektivitas Wifi + Bluetooth, Ukuran Layar 15.6 Inch QHD, Sistem Operasi Windows 10 Home, Software Office Home Student 2019',
        urllaptop:
            'https://static.bmdstatic.com/pk/product/large/61de85549715c.jpg'),
    const Laptop(
        nama: 'Lenovo Legion 5',
        harga: 'Rp 20.181.000',
        deskripsi:
            'Processor AMD Ryzen 7 4800H, RAM 16GB (2x 8GB) DDR4, SSD 512GB, VGA NVIDIA GeForce GTX 1660 Ti 6GB GDDR6, Konektivitas Wifi + Bluetooth, Ukuran Layar 15.6 Inch FHD, Sistem Operasi Windows 10 Home',
        urllaptop:
            'https://static.bmdstatic.com/pk/product/large/5ffe68cdd2b42.jpg'),
    const Laptop(
        nama: 'MSI GT80S 6QD',
        harga: 'Rp 38.849.000',
        deskripsi:
            'Processor Intel Core i7-6820HK, RAM 2x8GB DDR4, 1TB HDD, VGA Dual Nvidia GeForce GTX 970M 6GB, Ukuran Layar 18.4 Inch FHD, Sistem Operasi Windows 10',
        urllaptop:
            'https://static.bmdstatic.com/pk/product/large/5ff8296689bb2.jpg'),
    const Laptop(
        nama: 'Asus ROG Strix G15',
        harga: 'Rp 32.281.000',
        deskripsi:
            'Processor AMD Ryzen 7 5800H, RAM 2x 8GB, SSD 1TB, VGA NVIDIA GeForce RTX 3070 8GB, Konektivitas Wifi + Bluetooth, Ukuran Layar: 15.6 inch Slim FHD IPS, Sistem Operasi Windows 10 Home',
        urllaptop:
            'https://static.bmdstatic.com/pk/product/large/60b4afe6c4e5e.jpg'),
    const Laptop(
        nama: 'Asus TUF Gaming A15',
        harga: 'Rp 21.099.000',
        deskripsi:
            'Processor AMD Ryzen 7 6800H, RAM 16GB (2x 8GB) DDR5, SSD 512GB, VGA NVIDIA GeForce RTX 3060 6GB GDDR6, Konektivitas Wifi + Bluetooth, Ukuran Layar 15.6 inch FHD 144Hz, Sistem Operasi Windows 11 Home + Office Home and Student 2021',
        urllaptop:
            'https://static.bmdstatic.com/pk/product/large/ASUS-TUF-Gaming-A15-FA507RM-R736B6G-O-Jaeger-Gray-62bac7cbad609.jpg'),
    const Laptop(
        nama: 'Asus ROG Zephyrus M16',
        harga: 'Rp 27.235.000',
        deskripsi:
            'Processor Intel Core i7-11800H, RAM 8GB DDR4 + 8GB DDR4 OnBoard, SSD 512 GB, VGA NVIDIA GeForce RTX 3050Ti 4GB GDDR6, Konektivitas Wifi + Bluetooth, Ukuran Layar 16 inch WQXGA IPS 165Hz, Sistem Operasi Windows 10 Home + Office Home & Student 2019',
        urllaptop:
            'https://static.bmdstatic.com/pk/product/large/60ed9c04a57fa.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Daftar Laptop",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: laptops.length,
        itemBuilder: (context, index) {
          final laptop = laptops[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(laptop.urllaptop),
              ),
              title: Text(laptop.nama),
              subtitle: Text(laptop.harga),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => detail(laptop: laptop),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}

class detail extends StatelessWidget {
  final Laptop laptop;

  const detail({super.key, required this.laptop});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(laptop.nama),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              laptop.urllaptop,
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              laptop.nama,
              style: const TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              laptop.harga,
              style: const TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              laptop.deskripsi,
              style: const TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
