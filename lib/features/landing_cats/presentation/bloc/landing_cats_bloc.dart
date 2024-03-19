import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecnical_test_pragma/core/config/helpers/form_submission_status.dart';
import 'package:tecnical_test_pragma/features/landing_cats/domain/entities/catbreed_entity.dart';
import 'package:tecnical_test_pragma/features/landing_cats/domain/use_cases/get_all_cats_use_case.dart';

import '../../../../core/injector/injector.dart';

part 'landing_cats_event.dart';
part 'landing_cats_state.dart';

class LandingCatsBloc extends Bloc<LandingCatsEvent, LandingCatsState> {
  LandingCatsBloc() : super(LandingCatsState()) {
    final getAllCatsUseCase = Injector.resolve<GetAllCatsUseCase>();

    on<AllCatsEvent>((event, emit) async {
      emit(state.copyWith(formSubmissionStatusService: FormSubmitting()));
      final getAllCatsResponse = await getAllCatsUseCase.getAllCatsCall();
      getAllCatsResponse.fold((error) {
        emit(state.copyWith(
            formSubmissionStatusService:
                SubmissionFailed(exception: Exception(error.message))));
      }, (response) {
        emit(state.copyWith(
            formSubmissionStatusService: SubmissionSuccess(),
            listAllCats: response));
      });
    });
  }
}
