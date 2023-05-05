import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

TextStyle appstyle(double size, Color color,
    {FontWeight fw = FontWeight.bold}) {
  return GoogleFonts.poppins(fontSize: size, color: color, fontWeight: fw);
}

TextStyle appstyleWithHt(double size, Color color, double ht,
    {FontWeight fw = FontWeight.bold}) {
  return GoogleFonts.poppins(
      fontSize: size, color: color, fontWeight: fw, height: ht);
}
