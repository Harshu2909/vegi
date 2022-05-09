import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel{
  var productName;
  var  productImage;
  var productPrice;
  // String productId;
  // int productQuantity;
  // List<dynamic>productUnit;
  ProductModel(
    // QueryDocumentSnapshot<Object?> element, 
      {
      // this.productQuantity,
      // this.productId,
      // this.productUnit,
      this.productImage,
      this.productName,
      this.productPrice});
}
