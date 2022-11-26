import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  TextEditingController usernameEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController genderEditingController = TextEditingController();
  TextEditingController addressEditingController = TextEditingController();

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          //alignment: Alignment.center,
          children: [
            SizedBox(
              height: 1000,
              width: MediaQuery.of(context).size.width * 1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomPaint(
                  painter: HeaderCurvedContainer(),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 35,
                          letterSpacing: 1.5,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 5),
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/otpvector.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 450,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      textfield(
                        hintText: 'Username',
                        editingController: usernameEditingController,
                      ),
                      textfield(
                        hintText: 'Email',
                        editingController: emailEditingController,
                      ),
                      textfield(
                        hintText: 'Gender',
                        editingController: genderEditingController,
                      ),
                      textfield(
                        editingController: addressEditingController,
                        hintText: 'Address',
                      ),
                      SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          child: const Center(
                            child: Text(
                              "Update",
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),

            // Padding(
            //   padding: const EdgeInsets.only(bottom: 270, left: 184),
            //   child: CircleAvatar(
            //     backgroundColor: Colors.lightGreen,
            //     child: IconButton(
            //       icon: const Icon(
            //         Icons.edit,
            //         color: Colors.white,
            //       ),
            //       onPressed: () {},
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.orange;
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

Widget textfield({hintText, editingController}) {
  return Material(
    elevation: 4,
    shadowColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
      autofocus: true,
      controller: editingController,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            letterSpacing: 2,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
          fillColor: Colors.white30,
          // filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none)),
    ),
  );
}
