import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app_with_api/Data/Models/get_news_modle.dart';
import 'package:news_app_with_api/Data/Repository/get_new_repo.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());

  GetNewsRepo newsRepo = GetNewsRepo();

  getNews() async {
    emit(GetNewsLoading());

    try {
      await newsRepo.getNews().then((value) {
        if (value != null) {
          emit(GetNewsSuccess(response: value));
        } else {
          emit(GetNewsError());
        }
      });
    } catch (error) {
      emit(GetNewsError());
    }
  }
}

