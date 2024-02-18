import 'package:flutter/material.dart';
import 'package:flutter_prac2/Homepage.dart';

class SampleTextField extends StatelessWidget {
  const SampleTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController txtcontroller = TextEditingController();
    TextEditingController txtcontroller1 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Text Field'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: txtcontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Username',
                labelText: 'Username',
              ),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: txtcontroller1,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Password',
                labelText: 'Password',
              ),
              onChanged: (value) {},
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(
                      Username: txtcontroller.text,
                      Password: txtcontroller1.text,
                    ),
                  ),
                );
              },
              child: const Text(
                'LOGIN',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
