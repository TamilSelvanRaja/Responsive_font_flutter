part of '../responsive_fonts.dart';

class ResponsiveFonts extends StatelessWidget {
  const ResponsiveFonts({super.key, required this.text, required this.size, this.color, this.decoration, this.fontWeight});
  final String text;
  final double size;
  final Color? color;
  final TextDecoration? decoration;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: getProportionateScreenWidth(context, size),
        decoration: decoration,
        fontWeight: fontWeight,
      ),
    );
  }

  double getProportionateScreenWidth(BuildContext context, double inputWidth) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    return (inputWidth / 375.0) * screenWidth;
  }
}
