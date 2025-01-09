import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/bottom_menu.dart';

class VoiceScreen extends StatelessWidget {
  const VoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("ses ekranim"),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
