import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/data/receiver_repository.dart';
import 'src/data/sender_repository.dart';
import 'src/domain/receiver/receiver_cubit.dart';
import 'src/domain/sender/sender_cubit.dart';
import 'src/presentation/receiver_page.dart';
import 'src/presentation/role_selection_screen.dart';
import 'src/presentation/sender_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => SenderRepository()),
        RepositoryProvider(create: (context) => ReceiverRepository()),
      ],
      child: MaterialApp(
        title: 'UDP Image Transfer',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const RoleSelectionPage(),
        routes: {
          '/sender': (context) => RepositoryProvider(
                create: (context) => SenderRepository(),
                child: Builder(
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => SenderCubit(
                        repository: context.read<SenderRepository>(),
                      ),
                      child: const SenderPage(),
                    );
                  },
                ),
              ),
          '/receiver': (context) => RepositoryProvider(
                create: (context) => ReceiverRepository(),
                child: Builder(
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => ReceiverCubit(
                        repository: context.read<ReceiverRepository>(),
                      ),
                      child: const ReceiverPage(),
                    );
                  },
                ),
              ),
        },
      ),
    );
  }
}
