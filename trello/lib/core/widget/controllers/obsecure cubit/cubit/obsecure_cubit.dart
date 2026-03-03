import 'package:bloc/bloc.dart';

part 'obsecure_state.dart';

class ObsecureCubit extends Cubit<ObsecureState> {
  ObsecureCubit() : super(ObsecureInit());

  void loginPassword() {
    emit(
      ObsecureUpdate(
        loginPassObsecure: !state.loginPassObsecure,
        signPassObsecure: state.signPassObsecure,
        signConfirmObsecure: state.signConfirmObsecure,
      ),
    );
  }

  void signPassword() {
    emit(
      ObsecureUpdate(
        loginPassObsecure: state.loginPassObsecure,
        signPassObsecure: !state.signPassObsecure,
        signConfirmObsecure: state.signConfirmObsecure,
      ),
    );
  }

  void signConfirmPassword() {
    emit(
      ObsecureUpdate(
        loginPassObsecure: state.loginPassObsecure,
        signPassObsecure: state.signPassObsecure,
        signConfirmObsecure: !state.signConfirmObsecure,
      ),
    );
  }
}
