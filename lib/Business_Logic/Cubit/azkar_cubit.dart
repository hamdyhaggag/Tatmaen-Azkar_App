import 'package:flutter_bloc/flutter_bloc.dart';

import 'azkar_state.dart';

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit() : super(AzkarState(0));

  void updateIndex(int newIndex) {
    emit(AzkarState(newIndex));
  }
}
