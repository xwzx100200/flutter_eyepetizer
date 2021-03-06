import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eyepetizer/model/category_model.dart';
import 'package:flutter_eyepetizer/page/category_detail_page.dart';
import 'package:flutter_eyepetizer/util/navigator_manager.dart';

class CategoryWidgetItem extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryWidgetItem({Key key, this.categoryModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          NavigatorManager.to(CategoryDetailPage(categoryModel: categoryModel));
        },
        child: Stack(children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: CachedNetworkImage(imageUrl: categoryModel.bgPicture)),
          Center(
              child: Text('#${categoryModel.name}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)))
        ]));
  }
}
