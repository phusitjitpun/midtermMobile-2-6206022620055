import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String name, user, pass, conpass, phone, idp, dropdownValue, grade, email;

  double wh = 0, total = 0;
  WelcomePage(
      {Key? key,
      required this.name,
      required this.user,
      required this.pass,
      required this.conpass,
      required this.phone,
      required this.idp,
      required this.email,
      required this.grade,
      required this.dropdownValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(173, 216, 230, 1),
      appBar: AppBar(
        title: Text('ข้อมูลการสมัคร'),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromRGBO(173, 216, 230, 1),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      color: Color.fromRGBO(135, 206, 235, 1),
                      child: ListTile(
                        title: Text('ชื่อ-นามสกุล : '),
                        subtitle: Text(' $name'),
                      )),
                  Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      color: Color.fromRGBO(135, 206, 235, 1),
                      child: ListTile(
                        title: Text('Username : '),
                        subtitle: Text(' $user'),
                      )),
                  Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      color: Color.fromRGBO(135, 206, 235, 1),
                      child: ListTile(
                        title: Text('Password : '),
                        subtitle: Text(' $pass'),
                      )),
                  Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      color: Color.fromRGBO(135, 206, 235, 1),
                      child: ListTile(
                        title: Text('เลขบัตรประชาชน : '),
                        subtitle: Text(' $idp'),
                      )),
                  Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      color: Color.fromRGBO(135, 206, 235, 1),
                      child: ListTile(
                        title: Text('เบอร์โทรศัพท์ : '),
                        subtitle: Text(' $phone'),
                      )),
                  Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      color: Color.fromRGBO(135, 206, 235, 1),
                      child: ListTile(
                        title: Text('E-mail : '),
                        subtitle: Text(' $email'),
                      )),
                  Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      color: Color.fromRGBO(135, 206, 235, 1),
                      child: ListTile(
                        title: Text('เกรดเฉลี่ย : '),
                        subtitle: Text(' $grade'),
                      )),
                  Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      color: Color.fromRGBO(135, 206, 235, 1),
                      child: ListTile(
                        title: Text('วุฒิการศึกษา : '),
                        subtitle: Text(' $dropdownValue'),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
