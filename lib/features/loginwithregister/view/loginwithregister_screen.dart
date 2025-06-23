import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:saloon_project123/features/verification/view/verification_screen.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Loginwithregister extends StatefulWidget {
  const Loginwithregister({super.key});

  @override
  State<Loginwithregister> createState() => _LoginwithregisterState();
}

class _LoginwithregisterState extends State<Loginwithregister> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Text(
              "Welcome",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "By signing in you are agreeing our ",
              style: TextStyle(fontSize: 20),
            ),

            TextButton(
              onPressed: () {},
              child: Text(
                "Term and privacy policy",
                style: TextStyle(color: Colors.blue, fontSize: 23),
              ),
            ),
            ToggleSwitch(
              minHeight: 60,
              minWidth: 200,
              cornerRadius: 25,
              activeBgColors: [
                [const Color.fromARGB(255, 241, 238, 238)],
                [const Color.fromARGB(255, 241, 238, 238)],
              ],
              activeFgColor: const Color.fromARGB(255, 17, 17, 17),
              inactiveBgColor: const Color.fromARGB(255, 196, 196, 196),
              inactiveFgColor: const Color.fromARGB(255, 139, 136, 136),
              initialLabelIndex: isLogin ? 0 : 1,
              totalSwitches: 2,
              labels: ['Login', 'Register'],

              radiusStyle: true,
              onToggle: (index) {
                setState(() {
                  if (index == 0) {
                    isLogin = true;
                  } else {
                    isLogin = false;
                  }
                  setState(() {});
                });
              },
            ),
            SizedBox(height: 10),
            if (isLogin) SignInColumn() else SignUpColumn(),
          ],
        ),
      ),
    );
  }
}

class SignUpColumn extends StatelessWidget {
  const SignUpColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Row(
          children: [
            SizedBox(width: 10),
            SizedBox(
              height: 70,
              width: 180,
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("First name"),
                  filled: true,
                  fillColor: const Color(0xFFDAF1EA),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            SizedBox(
              height: 70,
              width: 180,
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("Last name"),
                  filled: true,
                  fillColor: const Color(0xFFDAF1EA),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            decoration: InputDecoration(
              label: Text("Username"),
              filled: true,
              fillColor: const Color(0xFFDAF1EA),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              label: Text("Password"),
              filled: true,
              fillColor: const Color(0xFFDAF1EA),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              label: Text("Password"),
              filled: true,
              fillColor: const Color(0xFFDAF1EA),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            decoration: InputDecoration(
              label: Text("Mobile Number"),
              filled: true,
              fillColor: const Color(0xFFDAF1EA),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
        ),

        SizedBox(height: 5),
        Row(
          children: [
            SizedBox(width: 9),
            Checkbox(value: true, onChanged: (value) {}),

            Text(
              "By signing up you agree to our Term and privacy policy",
              style: TextStyle(color: Colors.blue, fontSize: 13),
            ),
          ],
        ),
        SizedBox(height: 30),
        Container(
          height: 60,
          width: 360,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(const Color(0xFF6B938F)),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Verificationcode()),
              );
            },
            child: Text(
              "Get OTP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
          ),
        ),
      ],
    );
  }
}

class SignInColumn extends StatelessWidget {
  const SignInColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration: InputDecoration(
              label: Text("Username"),
              filled: true,
              fillColor: const Color(0xFFDAF1EA),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              label: Text("Password"),
              filled: true,
              fillColor: const Color(0xFFDAF1EA),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            SizedBox(width: 10),
            Checkbox(value: true, onChanged: (value) {}),
            Text("Remember password"),
            SizedBox(width: 50),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot password",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          height: 60,
          width: 350,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(const Color(0xFF6B938F)),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
            ),
            onPressed: () {},
            child: Text("Login", style: TextStyle(fontSize: 25)),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            spacing: 20,
            children: [
              Container(color: Colors.black, height: 1, width: 99),
              Text("Or connect with", style: TextStyle(fontSize: 20)),
              Container(color: Colors.black, height: 1, width: 99),
            ],
          ),
        ),

        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 42,
                child: CircleAvatar(
                  radius: 39,
                  backgroundImage: AssetImage("assets/images/a2.png"),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                radius: 42,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 39,
                  backgroundImage: AssetImage("assets/images/download (2).png"),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No registered yet?", style: TextStyle(color: Colors.black)),
            TextButton(
              onPressed: () {},
              child: Text(
                "Login or create an store account ",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ],
    );
  }
}














































// import 'package:flutter/material.dart';
// import 'package:project_salon/ui/widgets/custombutton.dart';
// import 'package:stacked/stacked.dart';
//
// import '../../../constants/assets.gen.dart';
// import '../../tools/screen_size.dart';
// import 'login_viewmodel.dart';
//
//
// class LoginView extends StatelessWidget {
//   const LoginView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ViewModelBuilder<LoginViewModel>.reactive(
//       onViewModelReady: (model) {},
//       builder: (context, model, child) {
//         return SafeArea(
//           top: true,
//           left: true,
//           right: true,
//           child: Scaffold(
//           body: Form(
//             key: model.formkey,
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Center(child: Assets.images.logo.image(
//                       height: ScreenSize.width/6,
//                       width: ScreenSize.width/6,
//                       fit: BoxFit.cover),),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     validator: (currenttext){
//                       if(currenttext==null||currenttext.isEmpty){
//                         return "must fill username";
//                       }else{
//                         return null;
//                       }
//                     },
//                     controller: model.usernamectlr,
//                     keyboardType: TextInputType.name,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(25)
//                       ),
//                       hintText: "UserName",
//                       labelText: "Email"
//                     ),
//                   ),
//                 ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: TextFormField(
//                       obscureText: model.obsure,
//                       validator: (currenttext){
//                         if(currenttext==null||currenttext.isEmpty){
//                           return "must fill Password";
//                         }else{
//                           return null;
//                         }
//                       },
//                       controller: model.passwordctlr,
//                       keyboardType: TextInputType.name,
//                       decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(25)
//                           ),
//                           hintText: "Password",
//                           labelText: "Password",
//                         suffixIcon: IconButton(onPressed: (){
//                           model.togglepassword();
//                         }, icon:model.obsure?Icon(Icons.remove_red_eye):Icon(Icons.visibility_off)
//                       ),
//                     ),
//                   ),
//                       ),
//                   Align(
//                  alignment: Alignment.centerRight,
//                       child: TextButton(onPressed: (){}, child:Text("Forgot Password??"))),
//               CustomButton(text: "Login", onPressed: () async {
//                 FocusScope.of(context).unfocus();
//                 bool ?status=await model.login();
//                 if(status==true){
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));
//                 }else{
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login failed")));
//                 }
//               },borderRadius: 25,)
//               ],
//             ),
//           ),
//           ),
//         ),
//         );
//       },
//       viewModelBuilder: () => LoginViewModel(),
//     );
//   }
// }

