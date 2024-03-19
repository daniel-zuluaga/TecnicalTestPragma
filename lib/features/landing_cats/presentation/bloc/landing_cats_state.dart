// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'landing_cats_bloc.dart';

class LandingCatsState {
  final List<CatBreedEntity>? listAllCats;
  final FormSubmissionStatus? formSubmissionStatusService;
  LandingCatsState({
    this.listAllCats,
    this.formSubmissionStatusService,
  });

  LandingCatsState copyWith({
    List<CatBreedEntity>? listAllCats,
    FormSubmissionStatus? formSubmissionStatusService,
  }) {
    return LandingCatsState(
      listAllCats: listAllCats ?? this.listAllCats,
      formSubmissionStatusService:
          formSubmissionStatusService ?? this.formSubmissionStatusService,
    );
  }
}
