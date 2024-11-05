// app_routes.dart
part of 'app_pages.dart';

abstract class Routes {
<<<<<<< HEAD
  Routes._();
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const NAVBAR = _Paths.NAVBAR;
=======
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const REGISTER = '/register'; // Tambahkan rute register
  static const TRANSAKSI = '/transaksi';
>>>>>>> e44123f6c11e95a85178f74c56c22d20101b3be7
}

abstract class _Paths {
  static const HOME = '/home';
  static const LOGIN = '/login';
<<<<<<< HEAD
  static const NAVBAR = '/navbar';
=======
  static const REGISTER = '/register'; // Tambahkan path register
  static const TRANSAKSI = '/transaksi';
>>>>>>> e44123f6c11e95a85178f74c56c22d20101b3be7
}
