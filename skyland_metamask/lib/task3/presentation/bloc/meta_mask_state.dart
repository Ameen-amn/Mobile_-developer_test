part of 'meta_mask_bloc.dart';

@freezed
class MetaMaskState with _$MetaMaskState {
  const factory MetaMaskState({
    @Default([]) List<String> accounts,
    @Default(-1) int chainId,
    @Default(false) bool isLoaded,
    @Default(false) bool isLoading,
    @Default(false) bool onError,
  }) = _MetaMastState;

  factory MetaMaskState.initial() => MetaMaskState();
}
