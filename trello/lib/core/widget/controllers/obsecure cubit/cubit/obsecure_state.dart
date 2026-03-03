part of 'obsecure_cubit.dart';

sealed class ObsecureState {
  final bool loginPassObsecure;
  final bool signPassObsecure;
  final bool signConfirmObsecure;
  ObsecureState({
    required this.loginPassObsecure,
    required this.signPassObsecure,
    required this.signConfirmObsecure,
  });
}

final class ObsecureInit extends ObsecureState {
  ObsecureInit()
    : super(
        loginPassObsecure: true,
        signPassObsecure: true,
        signConfirmObsecure: true,
      );
}

final class ObsecureUpdate extends ObsecureState {
  ObsecureUpdate({
    required super.loginPassObsecure,
    required super.signPassObsecure,
    required super.signConfirmObsecure
  });
}
