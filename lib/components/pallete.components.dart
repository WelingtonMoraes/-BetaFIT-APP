import 'package:flutter/material.dart'; 

class Palette { 
  static const MaterialColor yellowGreen = const MaterialColor( 
    0xff9ACD32, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      50: const Color(0xff9ACD32 ),//10% 
      100: const Color(0xFF8AB82E),//20% 
      200: const Color(0xFF7CA32D),//30% 
      300: const Color(0xFF749929),//40% 
      400: const Color(0xFF698B23),//50% 
      500: const Color(0xFF5C7A1F),//60% 
      600: const Color(0xFF415715),//70% 
      700: const Color(0xFF374914),//80% 
      800: const Color(0xFF384915),//90% 
      900: const Color(0xFF000000),//100% 
    }, 
  ); 
}