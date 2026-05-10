import 'package:flutter/material.dart';
import 'owner_login.dart';
import 'member_login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background accent — diagonal white slash
          Positioned(
            top: -h * 0.15,
            right: -60,
            child: Transform.rotate(
              angle: -0.35,
              child: Container(
                width: 220,
                height: h * 0.55,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.04),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 2),

                  // Tag line
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white24),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'TRAIN · TRACK · TRANSFORM',
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 10,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Main title
                  const Text(
                    'GYM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 6,
                      height: 0.95,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'APP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 80,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 6,
                          height: 0.95,
                        ),
                      ),
                      const SizedBox(width: 12),
                      // Decorative line
                      Expanded(
                        child: Container(
                          height: 3,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.white, Colors.white.withOpacity(0)],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const Spacer(flex: 3),

                  // Section label
                  const Text(
                    'SIGN IN AS',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 11,
                      letterSpacing: 4,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 16),

                  _LoginButton(
                    label: 'Gym Owner',
                    sublabel: 'Manage your facility',
                    icon: Icons.fitness_center_rounded,
                    filled: true,
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const OwnerLoginPage())),
                  ),

                  const SizedBox(height: 12),

                  _LoginButton(
                    label: 'Member',
                    sublabel: 'Track your progress',
                    icon: Icons.person_outline_rounded,
                    filled: false,
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const MemberLoginPage())),
                  ),

                  const Spacer(),

                  // Bottom bar
                  Center(
                    child: Text(
                      '© 2025 GYM APP',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.15),
                        fontSize: 11,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    required this.label,
    required this.sublabel,
    required this.icon,
    required this.filled,
    required this.onTap,
  });

  final String label;
  final String sublabel;
  final IconData icon;
  final bool filled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        decoration: BoxDecoration(
          color: filled ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: filled ? Colors.white : Colors.white24,
            width: filled ? 0 : 1,
          ),
        ),
        child: Row(
          children: [
            // Icon box
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: filled ? Colors.black : Colors.white.withOpacity(0.08),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                color: filled ? Colors.white : Colors.white70,
                size: 20,
              ),
            ),
            const SizedBox(width: 16),
            // Labels
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: filled ? Colors.black : Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.3,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  sublabel,
                  style: TextStyle(
                    color: filled ? Colors.black45 : Colors.white38,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: filled ? Colors.black45 : Colors.white24,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}