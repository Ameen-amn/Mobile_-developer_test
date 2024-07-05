part of 'stone_paper_scissor_bloc.dart';

@freezed
class StonePaperScissorState with _$StonePaperScissorState {
  const factory StonePaperScissorState({
    @Default(Sign.noSign) Sign userSelectedSign,
    @Default(Sign.noSign) Sign aiSelectedSign,
    @Default(0) int userScore,
    @Default(0) int mobileScore,
    @Default('Start') String gameStatus,
    @Default('') String winner,
    @Default('') String loadingGameStatus,
    @Default(false) bool started,
    @Default(false) bool ended,
    @Default(false) bool loading,
    @Default(false) bool playing,
  }) = _StonePaperScissorState;
  factory StonePaperScissorState.initial() {
    return const StonePaperScissorState();
  }
}
