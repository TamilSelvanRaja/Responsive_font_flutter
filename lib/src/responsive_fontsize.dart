part of '../responsive_fonts.dart';

class ResponsiveFonts extends StatelessWidget {
  const ResponsiveFonts({super.key, required this.text, required this.size, this.color, this.decoration, this.fontWeight, this.textalignment, this.overflow});
  final String text;
  final double size;
  final Color? color;
  final TextDecoration? decoration;
  final FontWeight? fontWeight;
  final TextAlign? textalignment;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textalignment,
      style: TextStyle(color: color ?? Colors.black, fontSize: getProportionateScreenWidth(context, size), decoration: decoration, fontWeight: fontWeight, overflow: overflow),
    );
  }

  double getProportionateScreenWidth(BuildContext context, double inputWidth) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    return (inputWidth / 375.0) * screenWidth;
  }
}
