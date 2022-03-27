import 'package:application/responsive/NavigationBar.dart';
import 'package:application/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

late String name;
 late String phoneNumber;
class AlberRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            body: Column(
              children: [
                CheckBoxList(),
                DateTimePicker(),
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
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            onPressed: () => _selectDate(context),
            child: Text('Select date'),
          ),
        ],
      ),
    );
  }
}

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({Key? key}) : super(key: key);

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  late DateTime pickedDate;
  late TimeOfDay time;

  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
    time = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }

  _pickDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDate: pickedDate,
    );
    if (date != null) {
      setState(() {
        pickedDate = date;
      });
    }
  }

  _pickTime() async {
    TimeOfDay? t = await showTimePicker(
      context: context,
      initialTime: time,
    );
    if (t != null) {
      setState(() {
        time = t;
      });
    }
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


   

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
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
      validator: (value) {
        if (value!.isEmpty) {
          return 'Phone Number is Required';
        }
      },
      onSaved: (value) {
        phoneNumber = value!;
      },
    ),

              SizedBox(height: 100),
              RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formkey.currentState!.validate()) {
                      return;
                    }
                    _formkey.currentState!.save();
                    print(name);
                    print(phoneNumber);
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
