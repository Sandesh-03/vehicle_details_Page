import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class VehicleDetail extends StatefulWidget {
  const VehicleDetail({Key? key}) : super(key: key);

  @override
  State<VehicleDetail> createState() => _VehicleDetailState();
}

class _VehicleDetailState extends State<VehicleDetail> {
  bool value = true;
  String AText = "Accepting Rides";
  String CText = "Not Accepting Rides";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {},
        ),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Honda Activa 110cc",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        elevation: 5,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Positioned(
                        // group341WoG (0:39)
                        left: 236,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(4, 1, 10, 0),
                          width: 71,
                          height: 22,
                          decoration: BoxDecoration(
                            color: const Color(0xfff2f2f2),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        )),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 7, 1),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xff00bc8e),
                      ),
                    ),
                    const Text(
                      'Online',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        color: Color(0xff7c7c7c),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200.0,
                  width: double.infinity,
                  child: Carousel(
                    dotSize: 6.0,
                    dotSpacing: 15.0,
                    dotPosition: DotPosition.bottomCenter,
                    images: [
                      Image.asset('assets/images/download.jpg',
                          fit: BoxFit.cover),
                      Image.asset('assets/images/activa2.jpg',
                          fit: BoxFit.cover),
                      Image.asset('assets/images/activa3.jpg',
                          fit: BoxFit.cover),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Honda Activa 110cc",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.star),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "4.3",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "(44 rides)",
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              const Text(
                                "MH 12 KP 3431",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(width: 10,),
                              Image.asset("assets/images/varified.png")
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 40,
                            width: 170,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                  color: Colors.black,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: const [
                                  Text("Vehicle Preview"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(Icons.remove_red_eye)
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            buildSwitch(),
                            const SizedBox(
                              width: 20,
                            ),
                            value
                                ? const Text("Accepting Rides")
                                : const Text("Not Accepting"),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(),
                        ),
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "SETTINGS",
                              style: TextStyle(color: Colors.grey),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SettingTIles(
                            Title: "Pricing",
                            LeadingIcon: const Icon(Icons.currency_rupee),
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SettingTIles(
                              Title: "Pickup location",
                              LeadingIcon:
                                  const Icon(Icons.location_on_outlined)),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SettingTIles(
                              Title: "Vehicle Photos",
                              LeadingIcon:
                                  const Icon(Icons.camera_alt_outlined)),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SettingTIles(
                              Title: "Vehicle Description",
                              LeadingIcon: const Icon(Icons.notes_outlined)),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SettingTIles(
                              Title: "Set availability",
                              LeadingIcon:
                                  const Icon(Icons.calendar_month_outlined)),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SettingTIles(
                              Title: "Notes for pickup",
                              LeadingIcon: const Icon(Icons.note_add)),
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Remove this vehicle",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSwitch() => Transform.scale(
        scale: 2,
        child: Switch.adaptive(
          activeColor: Colors.green,
          activeTrackColor: Colors.green.shade400,
          inactiveThumbColor: Colors.grey,
          inactiveTrackColor: Colors.grey.shade400,
          splashRadius: 50,
          value: value,
          onChanged: (value) => setState(() => this.value = value),
        ),
      );
}

class SettingTIles extends StatelessWidget {
  String Title;
  Icon LeadingIcon;
  SettingTIles({super.key, required this.Title, required this.LeadingIcon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: LeadingIcon,
      title: Text(Title),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
