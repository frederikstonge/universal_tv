import 'package:flutter_bloc/flutter_bloc.dart';

import 'live_state.dart';

class LiveCubit extends Cubit<LiveState> {
  LiveCubit() : super(LiveState());
}
