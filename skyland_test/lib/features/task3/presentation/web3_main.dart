import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skyland_test/features/task3/presentation/bloc/meta_mask_bloc.dart';

///THIS CODE ONLY RUNS IN WEB AND USE THIS TO START THE SERVER[flutter run -d web-server]
class MetaMaskHomescreen extends StatelessWidget {
  static const String routeName = '/MetaMaskHomeScreen';
  const MetaMaskHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<MetaMaskBloc, MetaMaskState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const CircularProgressIndicator();
                } else if (state.isLoaded) {
                  return Text(
                      state.accounts.first); // Display the connected account
                } else if (state.accounts.isEmpty) {
                  return const Text(
                      'No account connected'); // Handle cleared state
                } else if (state.onError) {
                  return const Text(
                      'Failed to connect'); // Handle failure state
                } else {
                  return Container(); // Default case
                }
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () => BlocProvider.of<MetaMaskBloc>(context)
                    .add(const MetaMaskEvent.connecEvent()),
                child: const Text('Connect to Metamask'))
          ],
        ),
      ),
    );
  }
}
