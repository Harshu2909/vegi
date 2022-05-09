import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:vegi/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  ProductModel? productmodel;

  /////////////// herbsProduct ///////////////////////////////
  
  List<ProductModel> herbsProductList = [];
  

  fatchHerbsProductData() async {

     List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbsProduct").get();

    value.docs.forEach((element) {

      // print(element.data());
      productmodel = ProductModel(
        productImage: element.get("productImage"),
        productName: element.get("productName"),
        productPrice: element.get("productPrice")
      );
      newList.add(productmodel!);
    });
    herbsProductList=newList;
    notifyListeners();
  
}

List<ProductModel>get getHerbsProductDataList{
  return herbsProductList;
}


//////////////// Fresh Product ///////////////////////////////////////

 List<ProductModel> freshProductList = [];
  

  fatchFreshProductData() async {

     List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("FreshProduct").get();

    value.docs.forEach((element) {

      // print(element.data());
      productmodel = ProductModel(
        productImage: element.get("productImage"),
        productName: element.get("productName"),
        productPrice: element.get("productPrice")
      );
      newList.add(productmodel!);
    });
    freshProductList=newList;
    notifyListeners();
  
}

List<ProductModel>get getFreshProductDataList{
  return freshProductList;
}

  // List<ProductModel> freshProductList = [];

  // fatchFreshProductData() async {
  //   List<ProductModel> newList = [];

  //   QuerySnapshot value =
  //       await FirebaseFirestore.instance.collection("FreshProduct").get();

  //   value.docs.forEach(
  //     (element) {
  //       productModels(element);
  //       newList.add(productModel);
  //     },
  //   );
  //   freshProductList = newList;
  //   notifyListeners();
  // }

  // List<ProductModel> get getFreshProductDataList {
  //   return freshProductList;
  // }



//////////////// Root Product ///////////////////////////////////////



 List<ProductModel> rootProductList = [];
  

  fatchRootProductData() async {

     List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("RootProduct").get();

    value.docs.forEach((element) {

      // print(element.data());
      productmodel = ProductModel(
        productImage: element.get("productImage"),
        productName: element.get("productName"),
        productPrice: element.get("productPrice")
      );
      newList.add(productmodel!);
    });
    rootProductList=newList;
    notifyListeners();
  
}

List<ProductModel>get getRootProductDataList{
  return rootProductList;
}


//   List<ProductModel> rootProductList = [];

//   fatchRootProductData() async {
//     List<ProductModel> newList = [];

//     QuerySnapshot value =
//         await FirebaseFirestore.instance.collection("RootProduct").get();

//     value.docs.forEach(
//       (element) {
//         productModels(element);
//         newList.add(productModel);
//       },
//     );
//     rootProductList = newList;
//     notifyListeners();
//   }

//   List<ProductModel> get getRootProductDataList {
//     return rootProductList;
//   }

//   /////////////////// Search Return ////////////
//   List<ProductModel> get gerAllProductSearch {
//     return search;
//   }
}
