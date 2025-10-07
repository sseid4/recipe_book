import 'package:flutter/material.dart';

class RecipeImage extends StatelessWidget {
  final String imagePath;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final IconData fallbackIcon;

  const RecipeImage({
    super.key,
    required this.imagePath,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.backgroundColor,
    this.fallbackIcon = Icons.local_drink,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: backgroundColor == null
              ? const LinearGradient(colors: [Colors.deepOrange, Colors.orange])
              : null,
          color: backgroundColor,
        ),
        child: _buildImageWidget(),
      ),
    );
  }

  Widget _buildImageWidget() {
    // Check if it's a network URL or asset path
    if (imagePath.startsWith('http')) {
      return Image.network(
        imagePath,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (context, error, stackTrace) {
          print('Failed to load network image: $imagePath');
          return _buildFallback();
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepOrange, Colors.orange],
              ),
            ),
            child: Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                    : null,
                color: Colors.white,
              ),
            ),
          );
        },
      );
    } else {
      return Image.asset(
        imagePath,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (context, error, stackTrace) {
          print('Failed to load asset image: $imagePath');
          print('Error: $error');
          return _buildFallback();
        },
        frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
          if (wasSynchronouslyLoaded) {
            return child;
          }
          return AnimatedOpacity(
            opacity: frame == null ? 0 : 1,
            duration: const Duration(seconds: 1),
            curve: Curves.easeOut,
            child: child,
          );
        },
      );
    }
  }

  Widget _buildFallback() {
    // Calculate icon size safely
    double iconSize = 30;
    if (width != null && height != null) {
      iconSize = (width! < height! ? width! * 0.4 : height! * 0.4);
      // Ensure icon size is reasonable and finite
      iconSize = iconSize.clamp(20.0, 60.0);
    }

    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange]),
      ),
      child: Icon(fallbackIcon, color: Colors.white, size: iconSize),
    );
  }
}
