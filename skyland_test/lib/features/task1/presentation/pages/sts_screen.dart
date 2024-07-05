import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skyland_test/core/const/asset_images.dart';
import 'package:skyland_test/core/const/game_sign_enum.dart';
import 'package:skyland_test/core/const/text_style.dart';
import 'package:skyland_test/features/task1/presentation/bloc/stone_paper_scissor_bloc.dart';
import 'package:skyland_test/features/task1/presentation/pages/widgets/game_icon_card.dart';

class StonePaperScissorScreen extends StatelessWidget {
  static const String stonePaperScissorScreen = '/stonePaperScissorScreen';
  StonePaperScissorScreen({super.key});

  final List<String> stsIcons = [
    IconImages.stone,
    IconImages.paper,
    IconImages.scissor
  ];
  final textTheme = TextThemeContants.textTheme;
  @override
  Widget build(BuildContext context) {
    final spsBloc = BlocProvider.of<StonePaperScissorBloc>(context);
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<StonePaperScissorBloc, StonePaperScissorState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        stsIcons.length,
                        (index) => GameIconCard(
                              onTap: () {},
                              assetImage: stsIcons[index],
                              selectedSign:
                                  Sign.values[index] == state.aiSelectedSign,
                            )),
                  ),
                ),
                Row(children: [
                  Text('Computer', style: textTheme.displayLarge),
                  const Spacer(),
                  Text('Score:${state.mobileScore}',
                      style: textTheme.displayLarge)
                ]),
                if (state.playing)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Column(
                      children: [
                        const Text('Choose your sign'),
                        const SizedBox(height: 16),
                        Center(
                            child: Text(
                          state.loadingGameStatus,
                          style: textTheme.displaySmall,
                        )),
                      ],
                    ),
                  ),
                Center(
                  child: ElevatedButton(
                      onPressed: () =>
                          spsBloc.add(const StonePaperScissorEvent.startGame()),
                      child: Text(state.gameStatus,
                          style: textTheme.displayMedium)),
                ),
                if (state.ended)
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(state.winner, style: textTheme.displayLarge),
                  )
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: BlocBuilder<StonePaperScissorBloc, StonePaperScissorState>(
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(children: [
                  Text('Human', style: textTheme.displayLarge),
                  const Spacer(),
                  Text('Score : ${state.userScore}',
                      style: textTheme.displayLarge)
                ]),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                      stsIcons.length,
                      (index) => GameIconCard(
                            onTap: () {
                              if (state.started && !state.ended) {
                                spsBloc.add(StonePaperScissorEvent.userSelected(
                                    index: index));
                              }
                            },
                            assetImage: stsIcons[index],
                            selectedSign:
                                Sign.values[index] == state.userSelectedSign,
                          )),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
