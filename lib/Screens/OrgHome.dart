import 'package:application/Screens/OrgLogin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


bool completed = false;

class OrgHome extends StatefulWidget {
  const OrgHome({Key? key}) : super(key: key);

  @override
  State<OrgHome> createState() => _OrgHomeState();
}

class _OrgHomeState extends State<OrgHome> {
  final Stream<QuerySnapshot> Requests =
      FirebaseFirestore.instance.collection('Requests').snapshots();

  CollectionReference CompletedRequests =
      FirebaseFirestore.instance.collection('Requests');

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
        length: 1,
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 209, 229, 238),
            body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: StreamBuilder<QuerySnapshot>(
                  stream: Requests,
                  builder: (
                    BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot,
                  ) {
                    if (snapshot.hasError) {
                      return Text('Somthing went wrong..');
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Text('Loading..');
                    }
                    final data = snapshot.requireData;

                    return ListView.builder(
                        itemCount: data.size,
                        itemBuilder: (context, index) {
                          DateTime myDateTime =
                              (data.docs[index]['Time']).toDate();
                          return SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Stack(
                              fit: StackFit.passthrough,
                              clipBehavior: Clip.hardEdge,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Chairty : ${data.docs[index]['Charity']}',
                                      style: TextStyle(
                                          backgroundColor: Color.fromARGB(
                                              255, 185, 131, 137),
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Name : ${data.docs[index]['name']}'),
                                    Text(
                                        'Phone Number : ${data.docs[index]['phone number']}'),
                                    Text(
                                        'Electronics Donation : ${data.docs[index]['TypeElect']}'),
                                    Text(
                                        'Plastic Donation : ${data.docs[index]['TypePlastic']}'),
                                    Text(
                                        'Clothes Donation : ${data.docs[index]['TypeClothes']}'),
                                    Text('Pick up time : ${myDateTime}'),
                                     Text(
                                        'Street : ${data.docs[index]['Street']}'),
                                        Text(
                                        'Neighbourhood : ${data.docs[index]['Neigh']}'),
                                        Text(
                                        'City : ${data.docs[index]['City']}'),
                                        Text(
                                        'Area : ${data.docs[index]['Area']}'),
                                         Text(
                                        'Postal Code : ${data.docs[index]['Zip Code']}'),
                                        
                                    CompleteCheckBox(),
                                   

                
                                    SizedBox(
                                      width: screenWidth,
                                      height: 30,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        });
                  },
                )),
            appBar: AppBar(
              title: Text("WASELAH"),
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrgLogin()));
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
              bottom: TabBar(
                tabs: [
                  Tab(
                  icon: Icon(Icons.done),
                  text: "Requests",
                ),
                ]),
            ),
            ),
            );
  }
}

class CompleteCheckBox extends StatefulWidget {
  const CompleteCheckBox({Key? key}) : super(key: key);

  @override
  State<CompleteCheckBox> createState() => _CompleteCheckBoxState();
}

class _CompleteCheckBoxState extends State<CompleteCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CheckboxListTile(
        secondary: FaIcon(FontAwesomeIcons.check),
        controlAffinity: ListTileControlAffinity.leading,
        title: Text("Completed"),
        value: completed,
        onChanged: (bool? newValue) {
          setState(() {
            completed = newValue!;
          });
        },
        activeColor: Color.fromARGB(255, 185, 131, 137),
        checkColor: const Color(0xff666a86),
      ),
    );
  }
}
