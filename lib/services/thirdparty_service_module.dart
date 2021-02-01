import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:little_mee/services/subject_service.dart';
import 'package:little_mee/services/kit_service.dart';

@module
abstract class ThirdPartyServicesModule {
  @lazySingleton
  NavigationService get navigationService;
  @lazySingleton
  DialogService get dialogService;
  @lazySingleton
  SnackbarService get snackbarService;
  @lazySingleton
  SubjectService get subjectService;
  @lazySingleton
  KitService get kitService;
}
