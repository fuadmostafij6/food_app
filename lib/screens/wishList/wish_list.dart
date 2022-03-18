

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';

import 'package:food_app/models/wish_list_model.dart';
import 'package:food_app/providers/wishlist_provider.dart';
import 'package:food_app/widgets/single_item.dart';
import 'package:provider/provider.dart';

class WishLsit extends StatefulWidget {
  const WishLsit({Key? key}) : super(key: key);

  @override
  _WishLsitState createState() => _WishLsitState();
}

class _WishLsitState extends State<WishLsit> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "Wish List",
          style: TextStyle(color: textColor, fontSize: 18),
        ),
      ),
      body: fetchData("WishList")
    );
  }
}
Widget fetchData (String collectionName) {
  return StreamBuilder(
    stream: FirebaseFirestore.instance
        .collection(collectionName)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("YourWishList")
        .snapshots(),
    builder:
        (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      if (snapshot.hasError) {
        return const Center(
          child: Text("Something is wrong"),
        );
      }

      return ListView.builder(
          itemCount:
          snapshot.data == null ? 0 : snapshot.data!.docs.length,
          itemBuilder: (_, index) {
            DocumentSnapshot _documentSnapshot =
            snapshot.data!.docs[index];

            return
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SizedBox(
                    height: 60.0,
                    child:    ListTile(
                      leading: CircleAvatar(
                        radius: 60.0,
                        backgroundImage: NetworkImage(_documentSnapshot['wishListImage']),

                      ),
                      title: Text(_documentSnapshot['wishListName']),

                    ),
                  ),
                ),
              );

          });
    },
  );
}

// Card(
// elevation: 5,
// child: ListTile(
// leading: Text(_documentSnapshot['wishListName']),
// title: Text(
// "\$ ${_documentSnapshot['wishListPrice']}",
// style: const TextStyle(
// fontWeight: FontWeight.bold, color: Colors.red),
// ),
// trailing: GestureDetector(
// child: const CircleAvatar(
// child: Icon(Icons.remove_circle),
// ),
// onTap: () {
// FirebaseFirestore.instance
//     .collection(collectionName)
//     .doc(FirebaseAuth.instance.currentUser!.uid)
//     .collection("YourWishList")
//     .doc(_documentSnapshot.id)
//     .delete();
// },
// ),
// ),
// );