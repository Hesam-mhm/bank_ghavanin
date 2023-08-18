import 'package:bank_ghavanin/core/params/selected_book_in_rooster.dart';
import 'package:bank_ghavanin/features/feature_roster/data/model/book-roster-model.dart';
import 'package:bank_ghavanin/features/feature_roster/domain/entity/book_rooster_entity.dart';
import 'package:bank_ghavanin/features/feature_roster/domain/usecase/book_roster_usecase.dart';
import 'package:get/get.dart';

import '../../../../core/resources/data_state.dart';

class BookRosterController extends GetxController {
  BookRosterUsecase bookRosterUsecase;
  BookRosterController({required this.bookRosterUsecase});
  RxBool loading = false.obs;
  RxList<PageItems> allBooks = RxList();
  RxList<PageItems> superBooks = RxList();
  RxList<PageItems> subBooks = RxList();
  Rx<String> bookTitleInRoster = "".obs ;
  Rx<String> superBookTitleInChapters = "".obs ;


  @override
  onInit(){
    super.onInit();
    getBookRosterData(bookId:  SelectedBookInRoster.bookId,bookTitle:  SelectedBookInRoster.bookTitle);

  }


  Future<void> getBookRosterData({required int bookId,required String bookTitle}) async {
    loading.value = true;
    bookTitleInRoster.value = bookTitle;

    DataState dataState =
        await bookRosterUsecase.call(bookId);
    if (dataState is DataSuccess) {
      BookRosterEntity bookRosterEntity = dataState.data;
      allBooks.clear();
      allBooks.value = bookRosterEntity.responseData!.resultData!.pageItems!;
      superBooks.clear();
      allBooks.forEach((element) {

        if (element.parentId == null) {
          superBooks.add(element);
        }
      });
    }
    if (dataState is DataFailed) {
      print(dataState.error);
    }
    loading.value = false;
  }

  void getSubBookByParentId({required int superBookId,required String superBookTitle}) {
    loading.value = true;
    superBookTitleInChapters.value=superBookTitle;
    subBooks.clear();
    allBooks.forEach((element) {
      if (element.parentId == superBookId) {
        subBooks.add(element);
      }
    });
    loading.value == false;
  }
}
