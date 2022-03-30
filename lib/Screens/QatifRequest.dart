import 'package:application/responsive/NavigationBar.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

late String name;
late String phoneNumber;
bool _ElectCheck = false;
bool _ClothesCheck = false;
bool _PlasticCheck = false;
String charName = "Al Qatif";
DateTime? date;
late String Street;
late String Area;
late String City;
late String Neighbourhood;
late String Code;

class QatifRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            body: Column(
              children: [
                FormScreen(),
              ],
            ),
            appBar: AppBar(
              title: Text("WASELAH"),
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home1()));
                  },
                  icon: Icon(Icons.arrow_back)),
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  const Color(0xff666a86),
                  Color.fromARGB(255, 185, 131, 137)
                ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
              ),
              elevation: 20.0,
              titleSpacing: 20,
            ),
            resizeToAvoidBottomInset: false,
          ),
        ));
  }
}

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  late DateTime pickedDate;
  late TimeOfDay time;
  late Position currentPosition;
  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
    time = TimeOfDay.now();
  }

  void getCurrentPosition() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print("Permission not given");
      LocationPermission asked = await Geolocator.requestPermission();
    } else {
      currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      print(currentPosition.longitude.toString());
      print(currentPosition.latitude.toString());
    }
    List<Placemark> placemarks = await placemarkFromCoordinates(
        currentPosition.longitude, currentPosition.latitude);
    print(placemarks);
    Street = placemarks[0].name!;
    Area = placemarks[0].administrativeArea!;
    City = placemarks[0].locality!;
    Neighbourhood = placemarks[0].subLocality!;
    Code = placemarks[0].postalCode!;
  }

  @override
  Widget build(BuildContext context) {
    Timestamp pickUpTime = Timestamp.fromDate(pickedDate);
    CollectionReference Requests =
        FirebaseFirestore.instance.collection('Requests');
    return Column(
      children: [
        Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CheckBoxs(),
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                onChanged: (value) {
                  name = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name is Required';
                  }
                },
                onSaved: (value) {
                  name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  phoneNumber = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Phone Number is Required';
                  }
                },
                onSaved: (value) {
                  phoneNumber = value!;
                },
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                              " Date : ${pickedDate.year},${pickedDate.month},${pickedDate.day}"),
                          trailing: const Icon(Icons.keyboard_arrow_down),
                          onTap: _pickDate,
                        ),
                        ListTile(
                          title: Text(" Time : ${time.hour}:${time.minute}"),
                          trailing: const Icon(Icons.keyboard_arrow_down),
                          onTap: _pickTime,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 139, 143, 173),
                      onPrimary: Colors.white,
                      minimumSize: Size(30, 30)),
                  onPressed: () {
                    getCurrentPosition();
                    final currentSnack =
                        SnackBar(content: Text('Location Recived'),
                        action: SnackBarAction(label: 'Done', onPressed: (){}),);
                         ScaffoldMessenger.of(context).showSnackBar(currentSnack);

                  },
                  child: Text('Get Current Location'),
                ),
              ),
              SizedBox(height: 100),
              ElevatedButton.icon(
                  icon: Icon(Icons.done),
                  label: Text(
                    'Submit',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 139, 143, 173),
                      onPrimary: Colors.white,
                      minimumSize: Size(30, 30)),
                  onPressed: () {
                    if (!_formkey.currentState!.validate()) {
                      return;
                    } else {
                      _formkey.currentState!.save();
                    }
                    Requests.add({
                      'Charity': charName,
                      'name': name,
                      'phone number': phoneNumber,
                      'TypeElect': _ElectCheck,
                      'TypeClothes': _ClothesCheck,
                      'TypePlastic': _PlasticCheck,
                      'Time': pickUpTime,
                      'Street': Street,
                      'Neigh': Neighbourhood,
                      'City': City,
                      'Area': Area,
                      'Zip Code': Code,
                    }).then((value) => print('Request Recived')).catchError(
                        (error) => print('Failed to recive request'));
                    final snackBar = SnackBar(
                      content: const Text('Request Recived'),
                      action: SnackBarAction(label: 'Done', onPressed: () {}),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }),
            ],
          ),
        ),
      ],
    );
  }

 _pickDate() async {
    date = await showDatePicker(
        context: context,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5),
        initialDate: pickedDate,
        builder: (context, child) {
          return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(
                  primary: Color.fromARGB(255, 185, 131, 137),
                  onPrimary: Colors.white,
                  onSurface: Colors.black,
                ),
                textButtonTheme: TextButtonThemeData(
                    style:
                        TextButton.styleFrom(primary: const Color(0xff666a86))),
              ),
              child: child!);
        });
    if (date != null) {
      setState(() {
        pickedDate = date!;
      });
    }
  }

  _pickTime() async {
    TimeOfDay? t = await showTimePicker(
      context: context,
      initialTime: time,
       builder: (context, child) {
          return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(
                  primary: Color.fromARGB(255, 185, 131, 137),
                  onPrimary: Colors.white,
                  onSurface: Colors.black,
                ),
                textButtonTheme: TextButtonThemeData(
                    style:
                        TextButton.styleFrom(primary: const Color(0xff666a86))),
              ),
              child: child!);
        }
      
    );
    if (t != null) {
      setState(() {
        time = t;
      });
    }
  }

  Container CheckBoxs() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Donation Type :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff666a86),
                ),
              ),
            ),
            CheckboxListTile(
              secondary: FaIcon(FontAwesomeIcons.hatCowboy),
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Clothes"),
              value: _ClothesCheck,
              onChanged: (bool? newValue) {
                setState(() {
                  _ClothesCheck = newValue!;
                });
              },
              activeColor: Color.fromARGB(255, 185, 131, 137),
              checkColor: const Color(0xff666a86),
            ),
            CheckboxListTile(
              secondary: Icon(Icons.laptop_mac_rounded),
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Electronics"),
              value: _ElectCheck,
              onChanged: (bool? newValue) {
                setState(() {
                  _ElectCheck = newValue!;
                });
              },
              activeColor: Color.fromARGB(255, 185, 131, 137),
              checkColor: const Color(0xff666a86),
            ),
            CheckboxListTile(
              secondary: FaIcon(FontAwesomeIcons.recycle),
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Plastic"),
              value: _PlasticCheck,
              onChanged: (bool? newValue) {
                setState(() {
                  _PlasticCheck = newValue!;
                });
              },
              activeColor: Color.fromARGB(255, 185, 131, 137),
              checkColor: const Color(0xff666a86),
            ),
          ],
        ),
      ),
    );
  }
}
