import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:takamul_test/core/app_colors.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreen();
}

class _HelpScreen extends State<HelpScreen> {
  AppColor Color =AppColor();
  late VideoPlayerController videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;
  String videoUrl =
      "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.network(videoUrl)
      ..initialize().then((value) => setState(() {}));
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: videoPlayerController,
    );
  }
  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text('')),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              context: context,
              builder:(context)=>Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:16.0),
                      child: Text('المساعدة',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('للأستفادة من الخدمة وفهمها اكثر يمكنك العثور على مقطع',),
                          Text(' فيديو توضيحى ادناه'),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [

                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'التواصل مع فريق خدمة العملاء',
                                    style: TextStyle(
                                        color: Colors.deepOrange,
                                        decoration: TextDecoration.underline,
                                        fontSize: 12),
                                  )),
                              Image.network(
                                'https://tse2.mm.bing.net/th?id=OIP.O2KOvFxR4V-QKPrvNPfEUAAAAA&pid=Api&P=0&h=180',
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only( top: 40),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.appColor,
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'تطبيق',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          );
        },
        child: Icon(Icons.open_in_new),
      ),
    );
  }
}
