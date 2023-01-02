import 'package:get/get.dart';
import 'drag_and_drop_item_model.dart';

class DragAndDropModel {
  RxList<DragAndDropItemModel> dragAndDropItemList =
      RxList.filled(18, DragAndDropItemModel());
}
