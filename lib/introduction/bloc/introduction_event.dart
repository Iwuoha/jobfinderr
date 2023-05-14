abstract class IntroductionEvent {
  const IntroductionEvent();
}

class LookingEvent extends IntroductionEvent {
  final String looking;
  const LookingEvent(this.looking);
}

class OpenEvent extends IntroductionEvent {
  final String open;
  const OpenEvent(this.open);
}
