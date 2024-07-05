import 'package:skyland_test/core/const/game_sign_enum.dart';

abstract class GameRepository {
  Stream<String> gameLoadingStatus();
  Future<Sign> mobileSelectedSign();
  Future<GameResult> winDecission({required Sign mobileSign,required Sign userSign});
}
