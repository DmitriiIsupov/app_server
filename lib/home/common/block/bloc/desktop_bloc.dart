import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'desktop_event.dart';
part 'desktop_state.dart';

class DesktopBloc extends Bloc<DesktopEvent, DesktopState> {
  DesktopBloc() : super(DesktopInitial()) {
    on<DesktopEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
