import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/bg_home.png'), // Ganti dengan path gambar Anda
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              backgroundColor: Colors.black.withOpacity(
                  0.5), // Mengatur warna latar belakang AppBar dengan transparansi
              title: Row(
                children: [
                  Container(
                    width: 180, // Ubah lebar sesuai kebutuhan
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true, // Mengatur agar TextField lebih kecil
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8), // Padding lebih kecil
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.person, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16, top: 16),
                      child: Text(
                        'Hai!',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16, top: 8),
                      child: Text(
                        'Selamat Datang di Gizmogate',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    minimumSize: const Size(80, 30),
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    textStyle: const TextStyle(fontSize: 12),
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.upload, size: 16),
                                      SizedBox(width: 4),
                                      Text('Upload Produk'),
                                    ],
                                  ),
                                ),
                                const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.edit,
                                            color: Colors.white, size: 16),
                                        SizedBox(width: 4),
                                        Text("Status Produk",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                      ],
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.sell,
                                            color: Colors.white, size: 16),
                                        SizedBox(width: 4),
                                        Text("Penjualan",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                      ],
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.shopping_cart,
                                            color: Colors.white, size: 16),
                                        SizedBox(width: 4),
                                        Text("Pembelian",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
