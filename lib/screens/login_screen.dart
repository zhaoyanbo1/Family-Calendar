import 'package:flutter/material.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const bgColor = Color(0xFFFFFDF5);
  static const primaryColor = Color(0xFF0F172A);
  static const accentColor = Color(0xFFFAC638);
  static const secondaryAccent = Color(0xFFF59E0B);
  static const labelColor = Color(0xFF334155);
  static const hintColor = Color(0xFF7E7664);
  static const borderColor = Color(0xFFE2E8F0);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 90.5),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 440),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    _buildLogoHeader(),
                    const SizedBox(height: 40),
                    _buildLoginCard(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogoHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: accentColor.withOpacity(0.2),
            border: Border.all(
              color: accentColor.withOpacity(0.1),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Center(
            child: Icon(
              Icons.location_on,
              size: 40,
              color: accentColor,
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Cottage',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: primaryColor,
            letterSpacing: -0.75,
            fontFamily: 'Plus Jakarta Sans',
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Your family\'s shared space',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: hintColor,
            fontFamily: 'Plus Jakarta Sans',
          ),
        ),
      ],
    );
  }

  Widget _buildLoginCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: const Color(0xFFF1F5F9), width: 1),
        boxShadow: [
          BoxShadow(
            color: accentColor.withOpacity(0.08),
            blurRadius: 50,
            offset: const Offset(0, 20),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildEmailField(),
            const SizedBox(height: 24),
            _buildPasswordField(),
            const SizedBox(height: 24),
            _buildSignInButton(),
            const SizedBox(height: 32),
            _buildFooterLinks(),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email Address',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: labelColor,
            fontFamily: 'Plus Jakarta Sans',
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFFFDF5).withOpacity(0.5),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: borderColor, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 17.5),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'hello@family.com',
                hintStyle: TextStyle(
                  color: hintColor.withOpacity(0.5),
                  fontSize: 16,
                  fontFamily: 'Plus Jakarta Sans',
                ),
                border: InputBorder.none,
              ),
              style: const TextStyle(
                fontSize: 16,
                color: primaryColor,
                fontFamily: 'Plus Jakarta Sans',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: labelColor,
            fontFamily: 'Plus Jakarta Sans',
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFFFDF5).withOpacity(0.5),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: borderColor, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 17.5),
            child: TextField(
              controller: passwordController,
              obscureText: obscurePassword,
              decoration: InputDecoration(
                hintText: '••••••••',
                hintStyle: TextStyle(
                  color: hintColor.withOpacity(0.5),
                  fontSize: 16,
                  fontFamily: 'Plus Jakarta Sans',
                ),
                border: InputBorder.none,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscurePassword = !obscurePassword;
                    });
                  },
                  child: Icon(
                    obscurePassword ? Icons.visibility_off : Icons.visibility,
                    color: hintColor,
                    size: 20,
                  ),
                ),
              ),
              style: const TextStyle(
                fontSize: 16,
                color: primaryColor,
                fontFamily: 'Plus Jakarta Sans',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignInButton() {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [accentColor, secondaryAccent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Handle sign in
            print('Email: ${emailController.text}');
            print('Password: ${passwordController.text}');
          },
          borderRadius: BorderRadius.circular(24),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: const Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Plus Jakarta Sans',
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFooterLinks() {
    return Column(
      children: [
        Center(
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: hintColor,
              fontFamily: 'Plus Jakarta Sans',
            ),
          ),
        ),
        const SizedBox(height: 16),
        Divider(
          color: const Color(0xFFF1F5F9),
          height: 1,
          thickness: 1,
        ),
        const SizedBox(height: 25),
        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: hintColor,
                fontFamily: 'Plus Jakarta Sans',
              ),
              children: [
                const TextSpan(text: 'Don\'t have an account? '),
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const RegisterScreen()),
                      );
                    },
                    child: const Text(
                      'Create one',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: accentColor,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
