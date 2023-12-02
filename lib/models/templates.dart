import 'package:flutter/material.dart';

class Templates {
  static MaterialApp materialApp(Widget homeWidget,
      {String title = "Flutter App",
      ThemeData? theme,
      MaterialColor? primaryColor,
      ThemeData? darkTheme}) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: (theme != null)
          ? theme
          : ThemeData(primaryColor: primaryColor, primarySwatch: primaryColor),
      darkTheme: (darkTheme != null)
          ? darkTheme
          : ThemeData(primaryColor: Colors.black, primarySwatch: Colors.indigo),
      // actions: ,
      home: homeWidget,
    );
  }

  static Container textInContainer(String text,
      {TextAlign textAlign = TextAlign.start,
      Color corTexto = Colors.white,
      double fontSize = 18,
      FontWeight fontWeight = FontWeight.normal,
      double? width,
      double? height,
      EdgeInsets? marging,
      Color? containerTextColor,
      TextOverflow overflow = TextOverflow.visible}) {
    return Container(
      width: width,
      height: height,
      margin: marging,
      color: containerTextColor,
      child: Text(
        text,
        overflow: overflow,
        textAlign: textAlign,
        style: TextStyle(
            color: corTexto, fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }

  static ElevatedButton elevatedButton(
      {Container? textInContainerWidget,
      Icon? icon,
      BuildContext? context,
      Widget? destinationPage,
      bool popPage = false,
      Function? basicFunctionOnPressed,
      Color backgroundColor = Colors.blue,
      double elevation = 10,
      Size? fixedSize,
      Color? shadowColor,
      EdgeInsets? padding,
      RoundedRectangleBorder? buttonBorder}) {
    textInContainerWidget ??= Container();
    return ElevatedButton(
      onPressed: () {
        (basicFunctionOnPressed != null)
            ? basicFunctionOnPressed()
            : () {
                print('Botão Clicado!');
              }();
        if (context != null && popPage) {
          Navigator.pop(context);
        }
        if (context != null && destinationPage != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => destinationPage,
            ),
          );
        }
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: elevation,
          shadowColor: shadowColor,
          fixedSize: fixedSize,
          padding: padding,
          shape: buttonBorder),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: (icon != null)
            ? [textInContainerWidget, icon]
            : [
                textInContainerWidget,
              ],
      ),
    );
  }

  static Icon icon(IconData icon,
      {Color cor = Colors.black, double size = 20}) {
    return Icon(icon, color: cor, size: size);
  }
}
