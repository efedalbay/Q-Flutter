import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class VoiceScreen extends StatelessWidget {
  const VoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Text("Merhaba Arkadaslar"),
          InkWell(
            onTap: () {
              // tiklannca Ne Yap
              //context.go("/profile");
              context.push("/profile");
            },
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  size: 38,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 5.0),
                Text(
                  "Profil",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              // tiklanma kodunu buraya yazicam
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Uyari"),
                  content: const Text("Silmekten Eminmisiniz?"),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.check_circle),
                    ),
                    IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: const Icon(Icons.cancel),
                    ),
                  ],
                ),
              );
            },
            splashColor: Theme.of(context).colorScheme.primary,
            // hoverColor: ,
            child: Row(
              children: [
                Icon(Icons.delete,
                    size: 38, color: Theme.of(context).colorScheme.error),
                const SizedBox(width: 5.0),
                Text(
                  "Hesabi Kaldir",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
