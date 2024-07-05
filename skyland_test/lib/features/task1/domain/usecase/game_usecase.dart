import 'package:injectable/injectable.dart';
import 'package:skyland_test/core/const/game_sign_enum.dart';
import 'package:skyland_test/features/task1/domain/repository/game_repository.dart';

@Injectable()
class GameUseCase {
  final GameRepository repository;
  GameUseCase({required this.repository});

  Stream<String> gameLoadingStatus() {
    List<String> choices = ['Stone', 'Paper', 'Scissor'];
    return Stream.periodic(
        const Duration(milliseconds: 700), (count) => choices[count]).take(3);
  }

  Future<Sign> signSelectionByMobile() async {
    return await repository.mobileSelectedSign();
  }

  Future<GameResult> gameResult(
      {required Sign mobileSign, required Sign userSign}) async {
    final GameResult result = await repository.winDecission(
        mobileSign: mobileSign, userSign: userSign);
    return result;
  }
}
