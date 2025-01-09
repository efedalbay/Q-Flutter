import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/bottom_menu.dart';

class VoiceScreen extends StatelessWidget {
  const VoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Text("Sayfalar Arasi Gecis"),
          ElevatedButton(
            onPressed: () {
              context.go("/login");
            },
            child: const Text("Giris Yapiniz | go"),
          ),
          const Divider(),
          ElevatedButton(
            onPressed: () {
              context.push("/login");
            },
            child: const Text("Giris Yapiniz | push"),
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
