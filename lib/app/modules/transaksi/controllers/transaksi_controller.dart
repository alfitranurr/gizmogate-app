// transaksi_controller.dart
import 'package:get/get.dart';

enum TransaksiFilter { semuaPesanan, dalamPengiriman, pesananSelesai }

class TransaksiController extends GetxController {
  var selectedFilter = TransaksiFilter.semuaPesanan.obs;

  void updateFilter(TransaksiFilter filter) {
    selectedFilter.value = filter;
  }
}
