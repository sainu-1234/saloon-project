import 'package:flutter/material.dart';

class Verificationcode extends StatelessWidget {
  const Verificationcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFFD0F0E9)),
      backgroundColor: const Color(0xFFD0F0E9),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              "verificaton Code",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "By signing iin you are agreeing our",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 5),
            Text(
              "Term and privacy policy",
              style: TextStyle(
                color: const Color.fromARGB(255, 8, 155, 239),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "We send you an SMS with a code to the numbe",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              "+91 9072751054",
              style: TextStyle(
                color: const Color.fromARGB(255, 11, 11, 11),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 35),
            Row(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color(0xFF7B928B),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color(0xFF7B928B),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color(0xFF7B928B),
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color(0xFF7B928B),
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              height: 60,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    const Color(0xFF6B938F),
                  ),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                onPressed: () {},
                child: Text(
                  "Verify",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Resend a new code",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 18, 18, 18),
                fontSize: 25,
              ),
            ),
            SizedBox(height: 7),
            Text(
              "Available in 10 seconds",
              style: TextStyle(
                color: const Color.fromARGB(255, 18, 18, 18),
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
