import 'package:bloc/bloc.dart';
import 'package:flutter_web3/ethereum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_mask_bloc.freezed.dart';
part 'meta_mask_event.dart';
part 'meta_mask_state.dart';

class MetaMaskBloc extends Bloc<MetaMaskEvent, MetaMaskState> {
  MetaMaskBloc() : super(MetaMaskState.initial()) {
    on<_Connect>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        final accounts = await ethereum!.requestAccount();
        final chainId = await ethereum!.getChainId();
        emit(state.copyWith(accounts: accounts, chainId: chainId,isLoading: false,isLoaded: true));
      } catch (e) {
        emit(state.copyWith(onError: true, isLoaded: true, isLoading: false));
      }
    });
    on<_Clear>(
      (event, emit) {
        emit(state.copyWith(accounts: [''], chainId: -1));
      },
    );
  }
}
