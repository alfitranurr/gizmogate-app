import 'package:get/get.dart';

class ShopeController extends GetxController {
  var items = [
    {
      'name': 'Kulkas Sedingin Antartika',
      'price': 12000000,
      'desc': 'ini deskripsi barang secara ringkas aja bang ya',
      'category': 'Perabotan'
    },
    {
      'name': 'Alat Pijat Santay!',
      'price': 2000000,
      'desc': 'ini deskripsi barang secara ringkas aja bang ya',
      'category': 'Alat Masak'
    },
    {
      'name': 'Boneka Labubu',
      'price': 2000000,
      'desc': 'ini deskripsi barang secara ringkas aja bang ya',
      'category': 'Perabotan'
    },
    {
      'name': 'DX Kamen Rider',
      'price': 2000000,
      'desc': 'ini deskripsi barang secara ringkas aja bang ya',
      'category': 'Elektronik'
    },
    {
      'name': 'Sepeda Listrik Eco',
      'price': 5000000,
      'desc': 'sepeda listrik ramah lingkungan',
      'category': 'Elektronik'
    },
    {
      'name': 'Laptop Acer Nitro',
      'price': 9000000,
      'desc': 'laptop gaming murah meriah',
      'category': 'Elektronik'
    },
    {
      'name': 'Mesin Jahit Singer',
      'price': 7000000,
      'desc': 'mesin jahit handal',
      'category': 'Perabotan'
    },
    {
      'name': 'Kompor Induksi',
      'price': 3000000,
      'desc': 'kompor canggih masa kini',
      'category': 'Alat Masak'
    },
  ].obs;

  var searchQuery = ''.obs;
  var selectedCategory = ''.obs;

  void updateSearchQuery(String query) {
    searchQuery.value = query;
  }

  void filterByCategory(String category) {
    selectedCategory.value = category;
  }

  List<Map<String, dynamic>> get filteredItems {
    var filtered = items.toList(); // Menghindari referensi langsung ke items

    // Filter berdasarkan kategori
    if (selectedCategory.value.isNotEmpty &&
        selectedCategory.value != 'Semua Kategori') {
      filtered = filtered
          .where((item) => item['category'] == selectedCategory.value)
          .toList();
    }

    // Filter berdasarkan pencarian
    if (searchQuery.value.isNotEmpty) {
      filtered = filtered
          .where((item) => (item['name'] as String)
              .toLowerCase()
              .contains(searchQuery.value.toLowerCase()))
          .toList();
    }

    return filtered;
  }
}
