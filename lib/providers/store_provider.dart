import 'package:flutter/material.dart';
import 'package:burgerking_mobileapp/widget/categorywidget.dart';

List<CategoryModel> favourite = [];
List<CategoryModel> get getFavStores => favourite;

void setFavourite(CategoryModel model) {
  if (favourite.contains(model)) {
    favourite.remove(model);
  } else {
    favourite.add(model);
  }
}
