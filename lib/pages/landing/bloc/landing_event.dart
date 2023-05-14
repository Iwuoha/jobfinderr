abstract class LandingEvent {
  const LandingEvent();
}

class TriggerLandingEvent extends LandingEvent {
  final int index;
  const TriggerLandingEvent(this.index) : super();
}
