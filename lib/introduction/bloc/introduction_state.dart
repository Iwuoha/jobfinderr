class IntroductionState {
  final String looking;
  final String open;

  const IntroductionState({
    this.looking = "",
    this.open = "",
  });

  // create a method

  IntroductionState copyWith({String? looking, String? open}) {
    return IntroductionState(
        looking: looking ?? this.looking, open: open ?? this.open);
  }
}
