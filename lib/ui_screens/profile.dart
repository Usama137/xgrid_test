import 'package:flutter/material.dart';
import 'package:xgrid_test/colors/custom_colors.dart';
import 'package:xgrid_test/strings/strings.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.nightlight_outlined),
                ],
              ),
              SizedBox(height: 10,),

              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(CustomColors.darkBrown),
                  border: Border.all(
                    width: 5,
                      color: Color(CustomColors.golden))
                ),
                child: Icon(Icons.person_outline_rounded,
                size: 70,
                color: Color(CustomColors.golden),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0,bottom: 10),
                child: Text(Strings.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0,),
                child: Text(Strings.email),
              ),

              Container(
                width: 200,
                height: 50,
                margin:
                const EdgeInsets.fromLTRB(20.0, 0.0, 20.0,10),
                child: MaterialButton(
                  onPressed: () {
                  },
                  child: Text(Strings.upgrade,
                     // style:
                  ),
                  color: const Color(CustomColors.golden),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),



              tabs(Icons.privacy_tip_outlined, Strings.privacy),

              tabs(Icons.history, Strings.purchase_history),

              tabs(Icons.help, Strings.help_support),

              tabs(Icons.settings, Strings.settings),

              tabs(Icons.person_add_alt_outlined, Strings.invite_friend),

              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                height: 50,
                margin:
                const EdgeInsets.fromLTRB(20.0, 0.0, 20.0,10),
                child: MaterialButton(
                  onPressed: () {
                  },
                  child: Text(Strings.logout,
                    style: TextStyle(color: Color(CustomColors.golden))
                    // style:
                  ),
                  color: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),


            ],
          ),
        ),
      ),


    );
  }


  Widget tabs( IconData icon, String text){
     return Padding(

       padding: const EdgeInsets.only(left:20.0, top: 20, right: 20),
       child: Container(
        width: double.infinity,
        height: 50,
        // color: Colors.grey.shade200,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius:BorderRadius.circular(25)
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Icon(icon),
            ),
            Text(text),
            Spacer(),
            Icon(Icons.arrow_forward_ios),
            SizedBox(width: 20,)
          ],

        ),

    ),
     );
  }
}
