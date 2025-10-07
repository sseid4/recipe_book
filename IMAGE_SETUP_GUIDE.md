# Adding Images to Your Recipe Book App

## Image Setup Instructions

Your Recipe Book app now supports images for each drink recipe! Here's how to add your own images:

### 1. Prepare Your Images

For best results, prepare three images for your drinks:
- **Mint Lemonade Mojito**: A refreshing green drink with mint garnish
- **Strawberry Matcha Latte**: A pink/green layered drink with strawberry
- **Pumpkin Caramel Latte**: An autumn-colored latte with caramel drizzle

### 2. Image Requirements

- **Format**: JPG, PNG, or WebP
- **Size**: Recommended 400x400px or larger (square aspect ratio works best)
- **Names**: Use these exact filenames:
  - `mint_mojito.jpg` (or .png)
  - `strawberry_matcha.jpg` (or .png)
  - `pumpkin_latte.jpg` (or .png)

### 3. Adding Images to Your App

1. **Delete the placeholder files** in `assets/images/`:
   - Remove `mint_mojito.txt`
   - Remove `strawberry_matcha.txt`
   - Remove `pumpkin_latte.txt`

2. **Add your image files** to `assets/images/`:
   ```
   assets/images/
   ├── mint_mojito.jpg
   ├── strawberry_matcha.jpg
   └── pumpkin_latte.jpg
   ```

3. **Update the image paths** in `lib/main.dart` if needed:
   - Change `.jpg` to `.png` if you're using PNG files
   - The current paths are:
     - `assets/images/mint_mojito.jpg`
     - `assets/images/strawberry_matcha.jpg`
     - `assets/images/pumpkin_latte.jpg`

### 4. Run Your App

After adding the images:
1. Stop the running app (if any)
2. Run `flutter clean`
3. Run `flutter pub get`
4. Run `flutter run`

### 5. Image Display Features

Your app now includes:
- **Home Screen**: 60x60px rounded images in recipe cards
- **Details Screen**: Full-screen background images with overlay gradient
- **Favorites Screen**: 60x60px rounded images (same as home)
- **Fallback System**: If images fail to load, beautiful gradient backgrounds with drink icons appear

### 6. Customizing Images

To add more recipes with images:

1. **Add new images** to `assets/images/`
2. **Update the Recipe creation** in `lib/main.dart`:
   ```dart
   Recipe(
     name: 'Your Drink Name',
     imagePath: 'assets/images/your_image.jpg',
     // ... other properties
   )
   ```

### 7. Advanced Image Features

The `RecipeImage` widget supports:
- **Automatic fallbacks** when images don't load
- **Rounded corners** and custom sizing
- **Gradient overlays** for better text readability
- **Consistent styling** across all screens

### Where to Find Drink Images

- **Unsplash** (unsplash.com): High-quality free photos
- **Pexels** (pexels.com): Free stock photos
- **Your own photos**: Take pictures of the drinks you make!

### Tips for Best Results

- Use **square images** (1:1 aspect ratio) for cards
- Choose images with **good contrast** for the details screen
- **Bright, appetizing** photos work best
- Consider the **background color** - it should complement your app's orange theme

Enjoy your enhanced Recipe Book app with beautiful drink images! 🍹✨
