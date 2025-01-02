import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../core/constants.dart';
import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Profile Screen"),
          Text("Keyvan Arasteh"),
          Text("keyvan.arasteh@live.com"),
          if (context.canPop())
            IconButton(
              onPressed: () {
                // tiklaninca ne yap
                context.pop();
              },
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Hesaptan Cikis Yap"),
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.moon),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
