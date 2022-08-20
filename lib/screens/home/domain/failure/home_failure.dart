import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_failure.freezed.dart';

@freezed
class HomeFailure with _$HomeFailure {
  const factory HomeFailure.serverNotResponding() = _HomeFailure;
  const factory HomeFailure.netWorkProblem() = _NetWorkProblem;
  const factory HomeFailure.somethingWentWrong() = _SomethingWentWrong;
}
