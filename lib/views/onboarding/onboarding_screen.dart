import 'package:flutter/material.dart';
import '../../theme/app_sizes.dart';
import '../../theme/app_text_styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize AppSizes responsive scaling
    AppSizes.init(context);

    // Deep warm orange color from mockup
    const Color brandOrange = Color(0xFFE65F1E);
    // Dark background gradient colors
    const Color bgStart = Color(0xFF0F0E0E);
    const Color bgEnd = Color(0xFF151413);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [bgStart, bgEnd],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.screenPaddingH,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(flex: 5),
                // Heading Text
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: AppTextStyles.displayLg.copyWith(
                      color: Colors.white,
                      height: 1.25,
                    ),
                    children: [
                      const TextSpan(text: 'Every day you\nshow up,\n'),
                      TextSpan(
                        text: 'you become\nmore.',
                        style: TextStyle(
                          color: brandOrange,
                          shadows: [
                            Shadow(
                              color: brandOrange.withOpacity(0.2),
                              blurRadius: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppSizes.spaceLg),
                // Subtitle/Description
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.spaceMd,
                  ),
                  child: Text(
                    'A high-performance habit system built for the disciplined craftsman. No hollow games, just honest progress.',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bodySm.copyWith(
                      color: Colors.white.withOpacity(0.6),
                      height: 1.5,
                    ),
                  ),
                ),
                const Spacer(flex: 4),
                // Begin Journey Button
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: [
                      BoxShadow(
                        color: brandOrange.withOpacity(0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate or start action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: brandOrange,
                      foregroundColor: const Color(0xFF1E0C06),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    child: Text(
                      'Begin Journey',
                      style: AppTextStyles.buttonMd.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1E0C06),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: AppSizes.spaceLg),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
