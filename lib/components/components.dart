import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weam/constant.dart';

class FormFeild extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController mycontroller;

  const FormFeild({
    Key? key,
    required this.labeltext,
    required this.iconData,
     required this.mycontroller,
    required this.hinttext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: const TextStyle(fontSize: 12),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 25),
        label: Container(
          margin: const EdgeInsets.symmetric(horizontal: 9),
          child: Text(labeltext),),
        suffixIcon: Icon(iconData),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}



Widget defaultFormFeild({
  required TextEditingController controller,
  required TextInputType type,
  required  validate,
  required String label,
  required IconData prefix,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      validator: validate,
      decoration: InputDecoration(
      labelText: label,
      prefixIcon: Icon(prefix),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );


/////////////////////////////////////////////////////////////////////////////////

class defaultButtom extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color color;

  const defaultButtom({Key? key, required this.text, this.onPressed, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 5),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed ,
        child: Text(text),
        color: color,
        textColor: white,
      ),
    );
  }
}








/*Widget defaultButton(
    {double width = double.infinity,
      double? height,
      Color background = Colors.blue,
      double radius = 10.0,
      TextStyle? style,
      required Function function,
      required String text,
      bool isUpperCase = true}) =>
    Container(
      height: height,
      width: width,
      child: MaterialButton(
          onLongPress: () {},
          onPressed:() {
            function();
          },
          child: Text(
            isUpperCase ? text.toUpperCase() : text.toLowerCase(),
            style: style,
          )),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(radius),
        color: background,
      ),
    );*/





//////////////////////////////////////////////////////////////////////////////////


void navigateTo (context , widget) =>  Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => widget,
              ),
);

void navigateAndFinish (context, widget,) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
            builder: (context) => widget,
        ),
          (route)
      {
        return false;
      },
    );