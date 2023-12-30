import 'package:color_change_provider/controller/provider_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: value.colors[value.index],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    value.color();
                  },
                  child: const Text('Change'))
            ],
          ),
        ),
      ),
    );
  }
}
