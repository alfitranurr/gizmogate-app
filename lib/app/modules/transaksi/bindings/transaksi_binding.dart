// transaksi_binding.dart
import 'package:get/get.dart';
import 'package:gizmogate/app/modules/transaksi/controllers/transaksi_controller.dart';

class TransaksiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransaksiController>(() => TransaksiController());
  }
}
