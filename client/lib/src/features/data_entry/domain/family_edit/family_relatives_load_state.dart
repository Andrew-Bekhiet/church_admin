sealed class FamilyRelativesLoadState {
  const FamilyRelativesLoadState();
}

final class FamilyRelativesLoading extends FamilyRelativesLoadState {
  const FamilyRelativesLoading();
}

final class FamilyRelativesLoaded extends FamilyRelativesLoadState {
  const FamilyRelativesLoaded();
}

final class FamilyRelativesFailedToLoad extends FamilyRelativesLoadState {
  const FamilyRelativesFailedToLoad();
}
