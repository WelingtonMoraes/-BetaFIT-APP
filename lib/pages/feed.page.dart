import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:visibility_detector/visibility_detector.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

class Feed extends StatefulWidget {
  @override
  _FeedPage createState() => _FeedPage();
}

class _FeedPage extends State<Feed>{

  final PageController controller = PageController(
    initialPage: 0,
    keepPage: true,
    viewportFraction: 1.0,
  );

  List<Widget> pages=[PageOne(), PageTwo()];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: pages.length,
      itemBuilder: (context, position) => pages[position],
      controller: PageController(),

      scrollDirection: Axis.vertical,
      allowImplicitScrolling: true,
    );
  }
}

class PageTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: DefaultTextStyle(
        textAlign: TextAlign.right,
        style: const TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TypewriterAnimatedText(
              '+SAUDÁVEIS\n+DISPOSTOS\n+VELOZES\n+FORTES\n:)', 
              speed: Duration(milliseconds: 150),
            ),
          ],
          onTap: () {
            //print("Tap Event");
          },
        ),
      ), 
    );
  }
}

class PageOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        SizedBox(
          width: 150,
          height: 200,
          child: Image.asset("assets/logo/logoBetaBit.png"),
        ),
        SizedBox(
          height: 200,
          child: Center(
            child: Text.rich(
              TextSpan( // default text style
                children: <TextSpan>[
                  TextSpan(
                    text: 'ÁLBUM DE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      color: Colors.white,
                    )
                  ),
                  TextSpan(
                    text: '\nESPORTES',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      color: Color(0xFF98DB2D),
                      fontStyle: FontStyle.italic
                    )
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 150,
          child: Center(
            child: Text.rich(
              TextSpan( // default text style
                children: <TextSpan>[
                  TextSpan(
                    text: '<b>',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xFF3B3B3B),
                    )
                  ),
                  TextSpan(
                    text: '#Beta',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xFF698B23),
                    )
                  ),
                  TextSpan(
                    text: 'FIT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    )
                  ),
                  TextSpan(
                    text: '<b>',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xFF3B3B3B),
                    )
                  ),
                ],
              ),
            ),
          ),
        ),
      ]  
    );
  }
}