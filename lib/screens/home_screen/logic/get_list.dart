import 'package:shoes_shop/data/dummy_data_list.dart';
import 'package:shoes_shop/models/product.dart';
import 'package:shoes_shop/models/shoes_brend.dart';

List<Product> getProductFor({required ShoesBrand model}) {
  List<Product> _items = [];

  if (model == ShoesBrand.all) {
    _items = dummyData;
  } else if (model == ShoesBrand.nike) {
    for (var element in dummyData) {
      if (element.brand == ShoesBrand.nike) {
        _items.add(element);
      }
    }
  } else if (model == ShoesBrand.addidas) {
    for (var element in dummyData) {
      if (element.brand == ShoesBrand.addidas) {
        _items.add(element);
      }
    }
  } else if (model == ShoesBrand.reebok) {
    for (var element in dummyData) {
      if (element.brand == ShoesBrand.reebok) {
        _items.add(element);
      }
    }
  } else if (model == ShoesBrand.puma) {
    for (var element in dummyData) {
      if (element.brand == ShoesBrand.puma) {
        _items.add(element);
      }
    }
  }

  return _items;
}
