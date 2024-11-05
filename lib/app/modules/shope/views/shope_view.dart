import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/shope_controller.dart';

class ShopeView extends StatelessWidget {
  final ShopeController controller = Get.find<ShopeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (query) => controller.updateSearchQuery(query),
          decoration: InputDecoration(
            hintText: 'Cari di Second\'s Hands...',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          // Category buttons
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildCategoryButton('Semua Kategori', Icons.list),
                _buildCategoryButton('Alat Masak', Icons.kitchen),
                _buildCategoryButton('Perabotan', Icons.chair),
                _buildCategoryButton('Elektronik', Icons.electrical_services),
              ],
            ),
          ),
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: controller.filteredItems.length,
                itemBuilder: (context, index) {
                  final item = controller.filteredItems[index];
                  return Card(
                    margin: EdgeInsets.all(8),
                    child: ListTile(
                      leading: Placeholder(
                        fallbackHeight: 60,
                        fallbackWidth: 60,
                        child: Text('INI BARANGNYA'),
                      ),
                      title: Text(item['name']),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item['desc']),
                          Row(
                            children: [
                              Text(
                                'Rp${item['price']},-',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  item['category'],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {
                          // Action when button is clicked
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Kategori'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Akun'),
        ],
        onTap: (index) {
          // Handle bottom navigation
        },
      ),
    );
  }

  Widget _buildCategoryButton(String category, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ElevatedButton.icon(
        onPressed: () {
          controller.filterByCategory(category);
        },
        icon: Icon(icon, size: 18),
        label: Text(category),
        style: ElevatedButton.styleFrom(
          backgroundColor: controller.selectedCategory.value == category
              ? Colors.blue
              : Colors.grey[300],
          foregroundColor: controller.selectedCategory.value == category
              ? Colors.white
              : Colors.black,
        ),
      ),
    );
  }
}
