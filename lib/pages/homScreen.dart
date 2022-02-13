import 'package:bharatq/pages/Profile.dart';
import 'package:bharatq/pages/Qr.dart';
import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 152, 226),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              height: 40,
              width: 330,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: Text(
                  "🌍 WORLD OF WONDER,NOIDA",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(15)),
            ),
            Text(
              """   SELECT 
YOUR AGE 
    GROUP""",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      (context),
                      MaterialPageRoute(builder: (context) => Qr()),
                    );
                  },
                  splashColor: Colors.red,
                  child: Container(
                    height: 190,
                    width: 122,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/ftyear.png'),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.red,
                  child: Container(
                    height: 190,
                    width: 122,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/etf.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  splashColor: Colors.red,
                  child: Container(
                    height: 190,
                    width: 122,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/tweetyffotfour.png'),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.red,
                  child: Container(
                    height: 190,
                    width: 122,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/fortyabove.png'),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
