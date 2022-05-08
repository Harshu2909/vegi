import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  String? productName;
  String? productImage;
  int? productPrice;
  // String productId;
  // int productQuantity;
  // List<dynamic>productUnit;
  ProductModel(QueryDocumentSnapshot<Object?> element, 
      {
      // this.productQuantity,
      // this.productId,
      // this.productUnit,
      this.productImage,
      this.productName,
      this.productPrice});
}
