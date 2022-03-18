
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/faq_model.dart';
List<ExpansionPanel> _getExpansionPanels(List<ListItem> _items)
{
  return _items.map<ExpansionPanel>((ListItem item) {


    return ExpansionPanel(
      backgroundColor: Colors.white,
      headerBuilder: (BuildContext context, bool isExpanded) {
        return ListTile(

          title: Text(item.headerName, textAlign: TextAlign.center,),

        );
      },
      body: ListTile(
        title: Text(item.description),
      ),
      isExpanded: item.isExpanded,
    );
  }).toList();
}

class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {

  final List<ListItem> _items =<ListItem>[

    ListItem( description: 'Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.', headerName: 'Faq question', id: 1),
    ListItem( description: 'Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.', headerName: 'Faq question', id: 2),
    ListItem( description: 'Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.', headerName: 'Faq question', id: 3),
    ListItem( description: 'Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.', headerName: 'Faq question', id: 4),
    ListItem( description: 'Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.', headerName: 'Faq question', id: 1),
    ListItem( description: 'Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.', headerName: 'Faq question', id: 1),
    ListItem( description: 'Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.', headerName: 'Faq question', id: 1),
    ListItem( description: 'Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.', headerName: 'Faq question', id: 1),
    ListItem( description: 'Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.', headerName: 'Faq question', id: 1),
    ListItem( description: 'Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.', headerName: 'Faq question', id: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Flutter Epansion Panel"),
      ),
      body: SingleChildScrollView(
          child: ExpansionPanelList(
            dividerColor: Colors.white,
            expandedHeaderPadding: const EdgeInsets.all(8.0),
            animationDuration: const Duration(milliseconds: 1000),
            children: _getExpansionPanels(_items),
            expansionCallback: (panelIndex, isExpanded) {

              setState(() {
                _items[panelIndex].isExpanded = !_items[panelIndex].isExpanded;
              });
            },
          )
      ),
    );
  }
}






