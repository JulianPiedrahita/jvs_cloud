import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

/// Gradient background widget for authentication pages
class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: AppColors.primaryGradient,
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      child: child,
    );
  }
}

/// Animated gradient background with floating particles effect
class AnimatedGradientBackground extends StatefulWidget {
  final Widget child;

  const AnimatedGradientBackground({
    super.key,
    required this.child,
  });

  @override
  State<AnimatedGradientBackground> createState() =>
      _AnimatedGradientBackgroundState();
}

class _AnimatedGradientBackgroundState extends State<AnimatedGradientBackground>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 8),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.primaryBlue.withOpacity(0.8 + 0.2 * _animation.value),
                AppColors.primaryPurple.withOpacity(0.9),
                AppColors.primaryRed.withOpacity(0.7 + 0.3 * _animation.value),
              ],
              stops: [
                0.0 + 0.1 * _animation.value,
                0.5,
                1.0 - 0.1 * _animation.value,
              ],
            ),
          ),
          child: Stack(
            children: [
              // Floating particles effect
              ...List.generate(
                20,
                (index) => Positioned(
                  left: (index * 50.0) % MediaQuery.of(context).size.width,
                  top: (index * 80.0) % MediaQuery.of(context).size.height,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 2000 + index * 100),
                    curve: Curves.easeInOut,
                    transform: Matrix4.translationValues(
                      20 * _animation.value * (index % 2 == 0 ? 1 : -1),
                      30 * _animation.value * (index % 3 == 0 ? 1 : -1),
                      0,
                    ),
                    child: Container(
                      width: 4.0 + (index % 3) * 2.0,
                      height: 4.0 + (index % 3) * 2.0,
                      decoration: BoxDecoration(
                        color: AppColors.white.withOpacity(0.1 + 0.1 * _animation.value),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
              widget.child,
            ],
          ),
        );
      },
    );
  }
}