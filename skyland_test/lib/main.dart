import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skyland_test/core/const/text_style.dart';
import 'package:skyland_test/features/home_screen/home_screen.dart';
import 'package:skyland_test/features/task1/presentation/bloc/stone_paper_scissor_bloc.dart';
import 'package:skyland_test/features/task1/presentation/pages/sts_screen.dart';
import 'package:skyland_test/features/task3/presentation/bloc/meta_mask_bloc.dart';
import 'package:skyland_test/features/task3/presentation/web3_main.dart';
import 'package:skyland_test/injectable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<StonePaperScissorBloc>()),
        BlocProvider(create: (context) => MetaMaskBloc())
      ],
      child: MaterialApp(
        title: 'SkyLandd',
        theme: ThemeData(
          textTheme: TextThemeContants.textTheme,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => HomeScreen(),
          MetaMaskHomescreen.routeName: (context) => const MetaMaskHomescreen(),
          StonePaperScissorScreen.stonePaperScissorScreen: (context) =>
              StonePaperScissorScreen(),
        },
      ),
    );
  }
}
