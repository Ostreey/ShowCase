import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_carga_mobileapp/application/common_widgets/my_snack_bar.dart';
import 'package:super_carga_mobileapp/application/pages/login/widgets/my_text_field.dart';
import 'package:super_carga_mobileapp/domain/usecases/login/login_usecases.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../domain/models/login/login_model.dart';
import 'login_providers.dart';



class Login extends ConsumerWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery
        .of(context)
        .size;
  final bool isLoading = ref.watch(loadingProvider);
    return SafeArea(
        child: Scaffold(
            backgroundColor: myColors().figmaBlue.shade100,
            body: SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/logo.png'),
                        SizedBox(
                          height: 20,
                        ),
                        MyTextField(
                          controller: emailController,
                          labelText: "E-mail",
                          hintText: "Johndoe@gmail.com",
                          obscureText: false,
                        ),
                        MyTextField(
                          controller: passwordController,
                          labelText: "Password",
                          hintText: "Type your password",
                          obscureText: true,
                        ),

                            ElevatedButton(
                              onPressed: () async {
                                ref.read(loadingProvider.notifier).state = true;
                                try{
                                  final response = await LoginUseCases().login(emailController.text, passwordController.text);
                                  Navigator.pushNamed(context, '/driverPanel');
                                }catch(e){
                                  if (e is EmptyCredentialsError) {
                                    mySnackbar.show(context, "Empty credentials!");
                                  }
                                  else{
                                    mySnackbar.show(context, e.toString());
                                  }
                                }
                                ref.read(loadingProvider.notifier).state = false;
                              },
                              child: const Text("Login"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: myColors().figmaOrange.shade50,
                                minimumSize: Size(80, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                        SizedBox(
                          height: 10,
                        ),
                      isLoading ? CircularProgressIndicator() : SizedBox(),
                        SizedBox(height: size.height / 6)
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}

