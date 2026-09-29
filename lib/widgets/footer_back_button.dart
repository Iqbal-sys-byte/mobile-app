import 'package:flutter/material.dart';

class FooterBackButton extends StatelessWidget {
  const FooterBackButton({super.key, this.parentRoute});

  /// Nama route halaman yang harus tampil setelah tombol kembali ditekan.
  final String? parentRoute;

  void _onBack(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
      return;
    }

    final target = parentRoute;
    if (target != null) {
      Navigator.pushReplacementNamed(context, target);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border(top: BorderSide(color: Colors.grey[300]!, width: 1)),
      ),
      child: Center(
        child: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blue, size: 28),
          onPressed: () => _onBack(context),
          tooltip: 'Kembali',
        ),
      ),
    );
  }
}
