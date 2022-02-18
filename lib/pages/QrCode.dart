
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:rive/rive.dart';


class QrCode extends StatelessWidget {
  String something;
  QrCode(this.something);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff762968)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
          child: Column(
            children: [
              const Center(child: Text("Cart Smashers",style: const TextStyle(fontFamily:'Poppins',fontWeight: FontWeight.bold,fontSize: 32,color: Colors.white))),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Color(0xffd5b8d7),
                  thickness: 2,
                ),
              ),
              Center(child: Text("Resrved for $something Guest(s)",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 32))),
              QrImage(
                data: 'No of Guest(s) : $something',
                version: QrVersions.auto,
                size: 100,
                gapless: false,
                embeddedImage: const AssetImage('assets/images/getqr.png'),
              ),
              const SizedBox(height: 10),
              Container(height:500,width: double.infinity,child:NewAnimation())
            ],
          ),
        ),
      ),
    );
  }
}
class NewAnimation extends StatefulWidget {
  @override
  _NewAnimationState createState() => _NewAnimationState();
}

class _NewAnimationState extends State<NewAnimation> {
  late RiveAnimationController _prevButtonController;
  late RiveAnimationController _nextButtonController;
  SMIInput<bool>? _playButtonInput;
  Artboard? _playButtonArtboard;

  void _changeAnimation(RiveAnimationController controller){
    if(controller.isActive =false ){//checking if the animation is playing if not playing
      controller.isActive=true;//settting it true to play the animation
    }
  }
  void _playButton(){
       if(_playButtonInput?.value ==false && _playButtonInput?.controller.isActive ==false){
      _playButtonInput?.value =true;
    }
    else if(_playButtonInput?.value ==true && _playButtonInput?.controller.isActive ==true){
      _playButtonInput?.value =false;
    }


  }

  @override
  void initState() {
    super.initState();
    _prevButtonController = OneShotAnimation(
        "Go Ahead",
        autoplay:false,
    );
    _nextButtonController = OneShotAnimation(
      "IDLE",
      autoplay: false,
    );
    rootBundle.load('assets/images/roller_coaster_cart.riv').then(
          (data) async {
        // Load the RiveFile from the binary data.
        final file = RiveFile.import(data);
        final artboard = file.mainArtboard;
        var controller = StateMachineController.fromArtboard(artboard, 'State Machine 1');
        if(controller!= null) {
          artboard.addController(controller);
          _playButtonInput =controller.findInput('isPlaying');
        }
        setState(() => _playButtonArtboard =artboard,
        );
      });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          _playButtonArtboard==null ?const SizedBox():
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTapDown: (_)=>{_playButton()},
                child: Container(height: 300,width:290,
                  child: Rive(artboard: _playButtonArtboard!,
                    fit: BoxFit.fitHeight,
                ),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}



