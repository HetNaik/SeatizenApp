import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  leading: Icon(Icons.menu),
                  title: Text('Select the Station'),
                  centerTitle: true,
                ),
                Container(
                  // color: Colors.red,
                  height: 2000,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    separatorBuilder: (context, i) => Divider(),
                    itemCount: moduleList.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        //TODO: Repace icon with image
                        trailing: Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.blue,
                          size: 23,
                        ),
                        onTap: () {},
                        title: Row(children: [
                          Text(
                            moduleList[i].toString(),
                            //style: kW500S12,
                          ),
                        ]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // AppBar(
          //   title: Text('aba'),
          // )
        ],
      ),
    ));

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Select the station'),
    //     centerTitle: true,
    //     leading: Icon(Icons.menu),
    //   ),
    //   body: Stack(children: [
    //     SingleChildScrollView(
    //         child: Container(
    //       child: ListView.separated(
    //         padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
    //         shrinkWrap: true,
    //         scrollDirection: Axis.vertical,
    //         separatorBuilder: (context, index) => Divider(
    //           color: Colors.black,
    //         ),
    //         itemCount: 20,
    //         itemBuilder: (context, index) => Padding(
    //           padding: EdgeInsets.all(8.0),
    //           child: Center(child: Text("Station ${index + 1}")),
    //         ),
    //       ),
    //     )),
    //   ]),
    // );
  }
}

List<String> moduleList = [
  'Station 1',
  'Station 2',
  'Station 3',
  'Station 4',
  'Station 5',
  'Station 6',
  'Station 7',
  'Station 8',
  'Station 9',
  'Station 10',
];
