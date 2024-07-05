// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:skyland_test/features/task1/data/i_repository/i_game_repoistory.dart'
    as _i4;
import 'package:skyland_test/features/task1/domain/repository/game_repository.dart'
    as _i3;
import 'package:skyland_test/features/task1/domain/usecase/game_usecase.dart'
    as _i5;
import 'package:skyland_test/features/task1/presentation/bloc/stone_paper_scissor_bloc.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.GameRepository>(() => _i4.IGameRepository());
    gh.factory<_i5.GameUseCase>(
        () => _i5.GameUseCase(repository: gh<_i3.GameRepository>()));
    gh.factory<_i6.StonePaperScissorBloc>(
        () => _i6.StonePaperScissorBloc(gameUseCase: gh<_i5.GameUseCase>()));
    return this;
  }
}
