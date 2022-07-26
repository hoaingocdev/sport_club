part of sign_up;

class _SignUpModel extends TTChangeNotifier<_SignUpView> {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  bool enable = false;
  bool obscureText = false;

  _SignUpModel()
      : nameController = TextEditingController(),
        emailController = TextEditingController(),
        passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void validate() {
    enable = nameController.text.isNotEmpty && emailController.text.isNotEmpty && passwordController.text.isEmpty;
  }

  void onBackPressed() {
    pop(context);
  }

  void onObscureTextPressed() {
    obscureText = !obscureText;
    notifyListeners();
  }

  void onSignUpPressed() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    push(context, createFavouritePlayer());
  }
}
