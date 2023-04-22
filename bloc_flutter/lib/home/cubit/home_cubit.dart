import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:gif_repository/gif_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());
}
