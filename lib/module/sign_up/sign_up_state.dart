part of sign_up;

class _SignUpViewState extends TTState<_SignUpModel, _SignUpView> {
  @override
  Widget buildWithModel(BuildContext context, _SignUpModel model) {
    return Scaffold(
      backgroundColor: Cl.white,
      appBar: TTAppBar.create(
        context: context,
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(30, 24, 30, 24),
          child: Form(
            key: model.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create an account',
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
                  labelText: 'Username',
                  controller: model.nameController,
                  onChanged: (v) => model.validate(),
                  isRequired: true,
                ),
                const SizedBox(height: 20),
                AuthTextField(
                  textType: TextType.email,
                  labelText: 'Email',
                  controller: model.emailController,
                  onChanged: (v) => model.validate(),
                  isRequired: true,
                ),
                const SizedBox(height: 20),
                AuthTextField(
                  textType: TextType.password,
                  controller: model.passwordController,
                  onChanged: (v) => model.validate(),
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
                  onPressed: model.onSignUpPressed,
                  text: 'SIGN UP',
                  backgroundColor: Cl.black,
                ),
                const SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    text: 'By tapping “Sign Up” you accept our ',
                    style: St.body14400.copyWith(
                      color: Cl.black.withOpacity(0.5),
                    ),
                    children: const [
                      TextSpan(
                        text: 'terms',
                        style: TextStyle(
                          color: Cl.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'condition',
                        style: TextStyle(
                          color: Cl.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
