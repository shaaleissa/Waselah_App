import 'package:application/responsive/NavigationBar.dart';
import 'package:application/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AlberRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            body: Column(
              children: [
                CheckBoxList(),
                //DateAndTime(),
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
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more)),
              ],
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  const Color(0xff666a86),
                  Color.fromARGB(255, 185, 131, 137)
                ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
              ),
              elevation: 20.0,
              titleSpacing: 20,
            )));
  }
}

class CheckBoxList extends StatefulWidget {
  const CheckBoxList({Key? key}) : super(key: key);

  @override
  State<CheckBoxList> createState() => _CheckBoxListState();
}

class _CheckBoxListState extends State<CheckBoxList> {
  bool _checked = false;
  bool _checked1 = false;
  bool _checked2 = false;
  @override
  Widget build(BuildContext context) {
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
              value: _checked,
              onChanged: (bool? newValue) {
                setState(() {
                  _checked = newValue!;
                });
              },
              activeColor: Color.fromARGB(255, 185, 131, 137),
              checkColor: const Color(0xff666a86),
            ),
            CheckboxListTile(
              secondary: Icon(Icons.laptop_mac_rounded),
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Electronics"),
              value: _checked1,
              onChanged: (bool? newValue) {
                setState(() {
                  _checked1 = newValue!;
                });
              },
              activeColor: Color.fromARGB(255, 185, 131, 137),
              checkColor: const Color(0xff666a86),
            ),
            CheckboxListTile(
              secondary: FaIcon(FontAwesomeIcons.recycle),
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Plastic"),
              value: _checked2,
              onChanged: (bool? newValue) {
                setState(() {
                  _checked2 = newValue!;
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

class DateAndTime extends StatefulWidget {
  const DateAndTime({Key? key}) : super(key: key);

  @override
  State<DateAndTime> createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Text("${selectedDate.toLocal()}".split(' ')[0]),
            SizedBox(height: 20.0,),
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select date'),
            ),
        ],
      ),
    );
  }
}
