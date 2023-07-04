
import 'package:super_carga_mobileapp/application/common_widgets/my_snack_bar.dart';
import 'package:super_carga_mobileapp/domain/models/login/login_model.dart';

import '../../../domain/models/proposal_details/proposal_details_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/usecases/login/login_usecases.dart';
import '../../../navigator_global.dart';


final loginProvider = FutureProvider<LoginResponse>((ref, ) async {
  Credentials credentials = ref.watch(credentialsProvider);
    final response = await LoginUseCases().login(credentials.email!, credentials.password!);
    return response;
});

final credentialsProvider = StateProvider<Credentials>((ref) {
  return Credentials(email: '', password: '');
});

final loadingProvider = StateProvider<bool>((ref) {
  return false;
});



