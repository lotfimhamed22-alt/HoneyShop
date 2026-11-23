import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'page_view_state.dart';

class PageViewCubit extends Cubit<PageViewState> {
  PageViewCubit() : super(PageViewInitial());
}
