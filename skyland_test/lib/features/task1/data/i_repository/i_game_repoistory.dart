import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:skyland_test/core/const/game_sign_enum.dart';
import 'package:skyland_test/features/task1/domain/repository/game_repository.dart';

@Injectable(as: GameRepository)
class IGameRepository extends GameRepository {
 
  @override
  Stream<String> gameLoadingStatus() {
    List<String> choices = ['Stone', 'Paper', 'Scissor'];
    return Stream.periodic(
        const Duration(seconds: 1), (count) => choices[count]).take(3);
  }

  @override
  Future<Sign> mobileSelectedSign() async {
    int index = Random().nextInt(3);
    return Sign.values[index];
  }

  @override
  Future<GameResult> winDecission(
      {required Sign mobileSign, required Sign userSign}) async {
   
    if (mobileSign == userSign) {
      return GameResult.draw;
    } else if (userSign == Sign.noSign || mobileSign == Sign.noSign) {
      return GameResult.draw;
    } else if ((mobileSign == Sign.stone && userSign == Sign.scissor) ||
        (mobileSign == Sign.paper && userSign == Sign.stone) ||
        (mobileSign == Sign.scissor && userSign == Sign.paper)) {
      return GameResult.mobileWin;
    } else {
      return GameResult.humanWin;
    }
  }
}
