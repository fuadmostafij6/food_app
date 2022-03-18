import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/models/wish_list_model.dart';

class WishListProvider with ChangeNotifier {
  addWishListData({
    required String wishListId,
    required String wishListName,
    var wishListPrice,
    required String wishListImage,
    required int wishListQuantity,
    List<dynamic>?productUnit,
  }) {
    FirebaseFirestore.instance
        .collection("WishList")
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .collection("YourWishList")
        .doc(wishListId)
        .set({
      "wishListId": wishListId,
      "wishListName": wishListName,
      "wishListImage": wishListImage,
      "wishListPrice": wishListPrice,
      "wishListQuantity": wishListQuantity,
      "wishList": true,
      "productUnit": productUnit,
    });
  }

///// Get WishList Data ///////
  List<WishListModel> wishList = [];

   getWishtListData() async {
    List<WishListModel> newList = [];
    QuerySnapshot value = await FirebaseFirestore.instance
        .collection("WishList")
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .collection("YourWishList")
        .get();
    for (var element in value.docs) {
      WishListModel wishListModel = WishListModel(
                productId: element.get("wishListId"),
                productImage: element.get("wishListImage"),
                productName: element.get("wishListName"),
                productPrice: element.get("wishListPrice"),
                productQuantity: element.get("wishListQuantity"),
                productUnit:element.get('productUnit'),
              );
              newList.add(wishListModel);
    }
    wishList = newList;
    notifyListeners();
  }

  List<WishListModel> get getWishList {
    return wishList;
  }





////////// Delete WishList /////
deleteWishtList(wishListId){
 FirebaseFirestore.instance
        .collection("WishList")
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .collection("YourWishList").doc(wishListId).delete();
}






}
