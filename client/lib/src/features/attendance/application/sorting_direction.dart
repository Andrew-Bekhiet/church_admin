enum SortingDirection {
  ascending,
  descending;

  int get multiplier => switch (this) {
    ascending => 1,
    descending => -1,
  };

  SortingDirection get reversed => switch (this) {
    ascending => descending,
    descending => ascending,
  };
}
