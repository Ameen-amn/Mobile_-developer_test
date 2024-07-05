part of 'meta_mask_bloc.dart';

@freezed
class MetaMaskEvent with _$MetaMaskEvent {
  const factory MetaMaskEvent.connecEvent() = _Connect;
  const factory MetaMaskEvent.clearEvent() = _Clear;
}
