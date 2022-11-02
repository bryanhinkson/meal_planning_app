import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/home_page.dart';
import 'package:meal_app/storage_service.dart';

final serviceInitializationProvider = FutureProvider((ref) {
  return Future.wait([
    ref.watch(storageServiceProvider).init(),
  ]).catchError((err) {
    log('failed to initialize services', error: err);
    throw err;
  }).then((value) {
    log('Initialized Services');
  });
});

void main() {
  runApp(
    ProviderScope(
      child: Consumer(
        builder: (context, ref, child) {
          final serviceInitialization =
              ref.watch(serviceInitializationProvider);

          if (serviceInitialization is! AsyncLoading) {
            return const MyApp();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
