import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:skyland_test/core/const/game_sign_enum.dart';
import 'package:skyland_test/features/task1/domain/usecase/game_usecase.dart';

part 'stone_paper_scissor_bloc.freezed.dart';
part 'stone_paper_scissor_event.dart';
part 'stone_paper_scissor_state.dart';

@Injectable()
class StonePaperScissorBloc
    extends Bloc<StonePaperScissorEvent, StonePaperScissorState> {
  final GameUseCase gameUseCase;
  StonePaperScissorBloc({required this.gameUseCase})
      : super(StonePaperScissorState.initial()) {
    // USER STARTED GAME
    on<_StartGame>((event, emit) async {
      // Stream is used to handle loading and call events
      StreamSubscription<String>? subscription;
      void close() => subscription?.cancel();

      emit(state.copyWith(loading: true));
      emit(state.copyWith(
          loading: false,
          started: true,
          ended: false,
          userSelectedSign: Sign.noSign,
          aiSelectedSign: Sign.noSign,
          gameStatus: 'Started',
          playing: true));
      subscription = gameUseCase.gameLoadingStatus().listen((event) {
        emit(state.copyWith(
          loadingGameStatus: event,
        ));
      });

      await Future.delayed(const Duration(seconds: 4)).then((value) async {
        emit(state.copyWith(
            started: false,
            ended: true,
            gameStatus: 'Play Again',
            aiSelectedSign: await gameUseCase.signSelectionByMobile(),
            playing: false));
        close();
        final GameResult result = await gameUseCase.gameResult(
            mobileSign: state.aiSelectedSign, userSign: state.userSelectedSign);
        emit(state.copyWith(
          winner: GameResult.mobileWin == result?'Looser':GameResult.humanWin==result?'Winner':'Draw',
          mobileScore:
              state.mobileScore + (GameResult.mobileWin == result ? 1 : 0),
          userScore: state.userScore + (GameResult.humanWin == result ? 1 : 0),
        ));
      });
    });
    // USER SELECTED SIGN
    on<_UserSelected>(
      (event, emit) {
        emit(state.copyWith(userSelectedSign: Sign.values[event.index]));
      },
    );
  }
}
