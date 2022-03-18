import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';
import 'package:food_app/providers/check_out_provider.dart';
import 'package:food_app/screens/check_out/google_map/google_map.dart';
import 'package:food_app/widgets/costom_text_field.dart';
import 'package:provider/provider.dart';

class AddDeliverAddress extends StatefulWidget {
  const AddDeliverAddress({Key? key}) : super(key: key);

  @override
  _AddDeliverAddressState createState() => _AddDeliverAddressState();
}

enum AddressTypes {
  // ignore: constant_identifier_names
  Home,
  // ignore: constant_identifier_names
  Work,
  // ignore: constant_identifier_names
  Other,
}

class _AddDeliverAddressState extends State<AddDeliverAddress> {
  var myType = AddressTypes.Home;
  @override
  Widget build(BuildContext context) {
    CheckoutProvider checkoutProvider = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Delivery Address",
          style: TextStyle(fontSize: 18),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        height: 48,
        child: checkoutProvider.isloadding == false
            ? MaterialButton(
                onPressed: () {
                  checkoutProvider.validator(context, myType);
                },
                child: Text(
                  "Add Address",
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
                color: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView(
          children: [
            CostomTextField(
              labText: "First name",
              controller: checkoutProvider.firstName, keyboardType: TextInputType.text,
            ),
            CostomTextField(
              labText: "Last name",
              controller: checkoutProvider.lastName,
                keyboardType: TextInputType.text
            ),
            CostomTextField(
              labText: "Mobile No",
              controller: checkoutProvider.mobileNo,
                keyboardType: TextInputType.number
            ),
            CostomTextField(
              labText: "Alternate Mobile No",
              controller: checkoutProvider.alternateMobileNo,
                keyboardType: TextInputType.number
            ),
            CostomTextField(
              labText: "Scoiety",
              controller: checkoutProvider.scoiety,
                keyboardType: TextInputType.text
            ),
            CostomTextField(
              labText: "Street",
              controller: checkoutProvider.street,
                keyboardType: TextInputType.text
            ),
            CostomTextField(
              labText: "Landmark",
              controller: checkoutProvider.landmark,
                keyboardType: TextInputType.text
            ),
            CostomTextField(
              labText: "City",
              controller: checkoutProvider.city,
                keyboardType: TextInputType.text
            ),
            CostomTextField(
              labText: "Aera",
              controller: checkoutProvider.aera,
                keyboardType: TextInputType.text
            ),
            CostomTextField(
              labText: "Pincode",
              controller: checkoutProvider.pincode,
                keyboardType: TextInputType.number
            ),
            InkWell(
              onTap: () {
               Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CostomGoogleMap(),
                  ),
                );
              },
              child: SizedBox(
                height: 47,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ignore: unnecessary_null_comparison
                    checkoutProvider.setLoaction == null? const Text("Set Loaction"):
                    const Text("Done!"),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            const ListTile(
              title: Text("Address Type*"),
            ),
            RadioListTile(
              value: AddressTypes.Home,
              groupValue: myType,
              title: const Text("Home"),
              onChanged: (value) {
                setState(() {
                  myType = AddressTypes.Home;
                });
              },
              secondary: Icon(
                Icons.home,
                color: primaryColor,
              ),
            ),
            RadioListTile(
              value: AddressTypes.Work,
              groupValue: myType,
              title: const Text("Work"),
              onChanged: ( value) {
                setState(() {
                  myType = AddressTypes.Work;
                });
              },
              secondary: Icon(
                Icons.work,
                color: primaryColor,
              ),
            ),
            RadioListTile(
              value: AddressTypes.Other,
              groupValue: myType,
              title: const Text("Other"),
              onChanged: ( value) {
                setState(() {
                  myType =AddressTypes.Other;
                });
              },
              secondary: Icon(
                Icons.devices_other,
                color: primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
