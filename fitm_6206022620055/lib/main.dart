import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FITM_6206022620055',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _name = TextEditingController();
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();
  TextEditingController _conpass = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _idp = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _dropdownValue = TextEditingController();
  TextEditingController _grade = TextEditingController();
  String dropdownValue = 'เลือกวุฒิการศึกษา';
  String dropdownValue1 = 'เลือกโครงการที่ต้องการสมัคร';
  String dropdownValue2 = 'เลือกสาขาวิชาที่ต้องการสมัครเรียน';
  String dropdownValue3 = 'เลือกสาขาวิชาที่ต้องการสมัครเรียน';
  String dropdownValue4 = 'เลือกสาขาวิชาที่ต้องการสมัครเรียน';
  String dropdownValue5 = 'เลือกสาขาวิชาที่ต้องการสมัครเรียน';
  String dropdownValue6 = 'เลือกสาขาวิชาที่ต้องการสมัครเรียน';
  String dropdownValue7 = 'เลือกสาขาวิชาที่ต้องการสมัครเรียน';
  String dropdownValue8 = 'เลือกสาขาวิชาที่ต้องการสมัครเรียน';
  String dropdownValue9 = 'เลือกสาขาวิชาที่ต้องการสมัครเรียน';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(173, 216, 230, 1),
      appBar: AppBar(
        title: Text('Computer SHOP'),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromRGBO(173, 216, 230, 1),
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/FITM.png",
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'ชื่อ-นามสกุล'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _user,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Username'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _pass,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _conpass,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _idp,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "เลขบัตรประชาชน"),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'เบอร์โทรศัพท์'),
                  keyboardType: TextInputType.phone,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'E-mail'),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Text('วุฒิการศึกษา'),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'เลือกวุฒิการศึกษา',
                  'ม.3',
                  'ม.6',
                  'ปวช.',
                  'ปวส.',
                  'ป.ตรี',
                  'ป.โท'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _grade,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'เกรดเฉลี่ย'),
                  keyboardType: TextInputType.number,
                ),
              ),
              Text('โครงการที่ต้องการสมัคร'),
              DropdownButton<String>(
                value: dropdownValue1,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue1 = newValue!;
                  });
                },
                items: <String>[
                  'เลือกโครงการที่ต้องการสมัคร',
                  'โครงการรับตรงสอบข้อเขียน',
                  'โครงการโควตาพื้นที่',
                  'โครงการ portfolio',
                  'โครงการเรียนดี',
                  'โครงการรับตรงใช้คะแนน GAT/PAT'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Text('ภาควิชาและสาขาวิชาที่ต้องการสมัครเรียน'),
              Text('ภาควิชาเทคโนโลยีสารสนเทศ'),
              Text('หลักสูตร 4 ปีรับ ม.6 ปวช.'),
              DropdownButton<String>(
                value: dropdownValue2,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue2 = newValue!;
                  });
                },
                items: <String>[
                  'เลือกสาขาวิชาที่ต้องการสมัครเรียน',
                  'สาขาวิชาเทคโนโลยีสารสนเทศ (IT)',
                  'สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INE)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Text('หลักสูตร ต่อเนื่อง รับ ปวส.'),
              DropdownButton<String>(
                value: dropdownValue3,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue3 = newValue!;
                  });
                },
                items: <String>[
                  'เลือกสาขาวิชาที่ต้องการสมัครเรียน',
                  'สาขาวิชาเทคโนโลยีสารสนเทศ (ITI)',
                  'สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INET)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Text('ภาควิชาการจัดการอุตสาหกรรม'),
              Text('หลักสูตร 4 ปีรับ ม.6 ปวช.'),
              DropdownButton<String>(
                value: dropdownValue4,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue4 = newValue!;
                  });
                },
                items: <String>[
                  'เลือกสาขาวิชาที่ต้องการสมัครเรียน',
                  'สาขาวิชาวิศวกรรมอุตสาหการและการจัดการ (IEM)',
                  'สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MM)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Text('หลักสูตร ต่อเนื่อง รับ ปวส.'),
              DropdownButton<String>(
                value: dropdownValue5,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue5 = newValue!;
                  });
                },
                items: <String>[
                  'เลือกสาขาวิชาที่ต้องการสมัครเรียน',
                  'สาขาวิชาการจัดการอุตสาหกรรม (IMT)',
                  'สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MMT)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Text('ภาควิชาวิศวกรรมเกษตรเพื่ออุตสาหกรรม'),
              Text('หลักสูตร 4 ปีรับ ม.6 ปวช.'),
              DropdownButton<String>(
                value: dropdownValue6,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue6 = newValue!;
                  });
                },
                items: <String>[
                  'เลือกสาขาวิชาที่ต้องการสมัครเรียน',
                  'สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFE)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Text('หลักสูตร ต่อเนื่อง รับ ปวส.'),
              DropdownButton<String>(
                value: dropdownValue7,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue7 = newValue!;
                  });
                },
                items: <String>[
                  'เลือกสาขาวิชาที่ต้องการสมัครเรียน',
                  'สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFET)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Text('ภาควิชาการออกแบบและบริหารงานก่อสร้าง'),
              Text('หลักสูตร 4 ปีรับ ม.6 ปวช.'),
              DropdownButton<String>(
                value: dropdownValue8,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue8 = newValue!;
                  });
                },
                items: <String>[
                  'เลือกสาขาวิชาที่ต้องการสมัครเรียน',
                  'สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CA)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Text('หลักสูตร ต่อเนื่อง รับ ปวส.'),
              DropdownButton<String>(
                value: dropdownValue9,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue9 = newValue!;
                  });
                },
                items: <String>[
                  'เลือกสาขาวิชาที่ต้องการสมัครเรียน',
                  'สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CDM)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WelcomePage(
                          dropdownValue: _dropdownValue.text,
                          name: _name.text,
                          user: _user.text,
                          pass: _pass.text,
                          conpass: _conpass.text,
                          idp: _idp.text,
                          phone: _phone.text,
                          email: _email.text,
                          grade: _grade.text,
                        ),
                      ),
                    );
                  },
                  child: Text('สมัครเรียน'))
            ],
          ),
        ),
      ),
    );
  }
}
