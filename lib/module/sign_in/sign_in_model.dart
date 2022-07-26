part of sign_in;

class _SignInModel extends TTChangeNotifier<_SignInView> {
  final TextEditingController nameController;
  final TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  bool obscureText = false;
  bool enable = false;

  _SignInModel()
      : nameController = TextEditingController(),
        passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void validate() {
    enable = nameController.text.isNotEmpty && passwordController.text.isNotEmpty;
    notifyListeners();
  }

  void onObscureTextPressed() {
    obscureText = !obscureText;
    notifyListeners();
  }

  void onLogInPressed() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
  }

  void onCreateAnAccout() {
    push(context, createSignUp());
  }
}
