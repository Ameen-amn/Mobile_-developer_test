part of 'stone_paper_scissor_bloc.dart';

@freezed
class StonePaperScissorEvent with _$StonePaperScissorEvent{
  const factory StonePaperScissorEvent.initial() = _InitialStonePaperScissorEvent;
  const factory StonePaperScissorEvent.startGame() = _StartGame;
  const factory StonePaperScissorEvent.userSelected({required int index}) = _UserSelected;
  const factory StonePaperScissorEvent.endGame() = _EndGame;
}