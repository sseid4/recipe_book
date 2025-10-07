class Recipe {
  final String name;
  final String description;
  final List<String> ingredients;
  final List<String> instructions;
  final String prepTime;
  final String servings;
  final String imagePath;
  bool isFavorite;

  Recipe({
    required this.name,
    required this.description,
    required this.ingredients,
    required this.instructions,
    required this.prepTime,
    required this.servings,
    required this.imagePath,
    this.isFavorite = false,
  });

  // Toggle favorite status
  void toggleFavorite() {
    isFavorite = !isFavorite;
  }

  // Create a copy of the recipe with updated favorite status
  Recipe copyWith({
    String? name,
    String? description,
    List<String>? ingredients,
    List<String>? instructions,
    String? prepTime,
    String? servings,
    String? imagePath,
    bool? isFavorite,
  }) {
    return Recipe(
      name: name ?? this.name,
      description: description ?? this.description,
      ingredients: ingredients ?? this.ingredients,
      instructions: instructions ?? this.instructions,
      prepTime: prepTime ?? this.prepTime,
      servings: servings ?? this.servings,
      imagePath: imagePath ?? this.imagePath,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
