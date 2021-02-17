import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Colors.dart';
import 'TextWeightAndSize.dart';

class IncomingBusInfo extends StatefulWidget {
  @override
  _IncomingBusInfoState createState() => _IncomingBusInfoState();
}

class _IncomingBusInfoState extends State<IncomingBusInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: Icon(Icons.menu),
              title: Text('Incoming Bus Info'),
              centerTitle: true,
            ),
            body: Stack(children: [
              SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Estimated Time Of Arrival',
                              style: GoogleFonts.manrope(
                                  textStyle:
                                      kW700S12.copyWith(color: kBlackColor)),
                              textAlign: TextAlign.center,
                            )),
                            Expanded(
                                child: Text(
                              'Bus ID',
                              style: GoogleFonts.manrope(
                                  textStyle:
                                      kW700S12.copyWith(color: kBlackColor)),
                              textAlign: TextAlign.center,
                            )),
                            Expanded(
                                child: Text(
                              'Estimated seats available',
                              style: GoogleFonts.manrope(
                                  textStyle:
                                      kW700S12.copyWith(color: kBlackColor)),
                              textAlign: TextAlign.center,
                            )),
                            Expanded(
                                child: Text(
                              'Next Stop',
                              style: GoogleFonts.manrope(
                                  textStyle:
                                      kW700S12.copyWith(color: kBlackColor)),
                              textAlign: TextAlign.center,
                            )),
                          ],
                        ),
                        Divider(height: 20, color: kBlackColor),
                        Divider(height: 2, color: kBlackColor),
                        SizedBox(
                          height: 16,
                        ),
                        BusInstanceWidget(
                          eta: '09:05',
                          busID: 'B021',
                          esa: 4,
                          nextStop: 'Station 7',
                        ),
                        BusInstanceWidget(
                          eta: '09:15',
                          busID: 'B032',
                          esa: 2,
                          nextStop: 'Station 9',
                        ),
                        BusInstanceWidget(
                          eta: '09:23',
                          busID: 'B621',
                          esa: 0,
                          nextStop: 'Station 11',
                        ),
                        BusInstanceWidget(
                          eta: '09:30',
                          busID: 'B901',
                          esa: 12,
                          nextStop: 'Station 15',
                        ),
                      ]),
                ),
              ),
            ])));
  }
}

class BusInstanceWidget extends StatelessWidget {
  final String eta, nextStop, busID;
  final int esa;
  const BusInstanceWidget({
    Key key,
    this.eta,
    this.esa,
    this.nextStop,
    this.busID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Text(eta,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.manrope(
                        textStyle: kW500S10.copyWith(color: kBlackColor)))),
            Expanded(
                child: Text(
              busID,
              textAlign: TextAlign.center,
              style: GoogleFonts.manrope(
                  textStyle: kW500S12.copyWith(color: kBlackColor)),
            )),
            Expanded(
                child: Text(
              esa.toString(),
              textAlign: TextAlign.center,
              style: GoogleFonts.manrope(
                  textStyle: kW500S12.copyWith(color: kBlackColor)),
            )),
            Expanded(
                child: Text(
              nextStop,
              textAlign: TextAlign.center,
              style: GoogleFonts.manrope(
                  textStyle: kW500S12.copyWith(color: kBlackColor)),
            ))
          ],
        ),
        Divider(height: 30, color: kBlackColor),
      ],
    );
  }
}
