part of sign_in;

class _SignInViewState extends TTState<_SignInModel, _SignInView> {
  @override
  Widget buildWithModel(BuildContext context, _SignInModel model) {
    return Scaffold(
      body: Form(
        key: model.formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(28, 107 + device.padding.top, 28, 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign In',
                  style: St.body24600.copyWith(color: Cl.green),
                ),
                const SizedBox(height: 16),
                Text(
                  'Amet minim mollit non deserunt ullamcoei sitaliqua dolor do amet sintelit officia.',
                  style: St.body14400.copyWith(color: Cl.black),
                ),
                const SizedBox(height: 30),
                AuthTextField(
                  textType: TextType.normal,
                  controller: model.nameController,
                  onChanged: (v) => model.validate(),
                  isRequired: true,
                  labelText: 'Username',
                ),
                const SizedBox(height: 30),
                AuthTextField(
                  textType: TextType.password,
                  onChanged: (v) => model.validate(),
                  controller: model.passwordController,
                  isRequired: true,
                  obscureText: model.obscureText,
                  labelText: 'Password',
                  suffixIcon: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: model.onObscureTextPressed,
                    child: Icon(
                      model.obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      color: Cl.green,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TTButton(
                  onPressed: model.enable ? model.onLogInPressed : null,
                  backgroundColor: model.enable ? Cl.green : Cl.gray,
                  text: 'LOGIN',
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      'Forgot password?',
                      style: St.body14400.copyWith(color: Cl.cl656565),
                    ),
                    const SizedBox(width: 11),
                    Text(
                      'Reset here',
                      style: St.body14500.copyWith(color: Cl.green),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Center(
                  child: Text(
                    'Don’t have an account?',
                    style: St.body14400.copyWith(
                      color: Cl.black.withOpacity(0.5),
                    ),
                  ),
                ),
                const SizedBox(height: 19),
                TTButton(
                  onPressed: model.onCreateAnAccout,
                  backgroundColor: Cl.dark,
                  text: 'CREATE AN ACCOUNT',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
