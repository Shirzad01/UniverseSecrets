import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class ReelSideActionBar extends StatefulWidget {
  final int currentVideoIndex;
  final VoidCallback onSaveVideo;
  final Function(String) onSendReport;

  const ReelSideActionBar({super.key, required this.onSaveVideo, required this.onSendReport, required this.currentVideoIndex});

  @override
  State<ReelSideActionBar> createState() => _ReelSideActionBarState();
}

class _ReelSideActionBarState extends State<ReelSideActionBar> {
  bool isFavorite = false;
  final double itemSize = 30;
  late List<bool> selectedItems;

  List<String> videoUrl = [
    'https://drive.google.com/uc?id=116MrfAcQP3RPNTPlejcJm4B2DHL3mYNv&export=download',
    'https://drive.google.com/uc?id=11YK8x9pW_UD6b5uBLW5rKV7li82RUdFb&export=download',
    'https://drive.google.com/uc?export=download&id=1YAXfUA2hKUG7WWMVS6wQ-pleUiwK5BiP',
    'https://drive.google.com/uc?export=download&id=1h58X46b-9XPOFEbtMHPb9dDxMkUL4nS4',
    'https://drive.google.com/uc?export=download&id=1u8VST7I-46ehRimFm1kLO8adCIdcUVNG',
    'https://drive.google.com/uc?export=download&id=1caGQY6E1jNNTfwnKyFDMlqAF5NgYsHBf',
    'https://drive.google.com/uc?export=download&id=19OUp6CxGeKjhwtu1wODtzuqMi4gxqXzN',
    'https://drive.google.com/uc?export=download&id=15Soeg2OzC_D4iQ6bEmmT_x_ubwgHdBMd',
    'https://drive.google.com/uc?export=download&id=1-Yhx-Z_Y9juCg90ar3TkuiVl5pMDGf0L',
    'https://drive.google.com/uc?export=download&id=1-DiWBG-rME1439ItKIA-lRZtOp79dsU5',
    'https://drive.google.com/uc?export=download&id=1-DuAXV3K8_LelGmD1LanSZCKcMXp0jsN',
    'https://drive.google.com/uc?export=download&id=1-WkSWklVuCn1T_SO1aNYx6WP7P84pPht',
    'https://drive.google.com/uc?export=download&id=1-8vLuK1CbZksRW8D-OeKA2LNRGOt5xOH',
    'https://drive.google.com/uc?export=download&id=1-JUVdmsQ82S8GVrM2A6_2OvfCshgCm4B',
    'https://drive.google.com/uc?export=download&id=1-Jx3K1ZIUItShbvgmNqOLAPUY-mQsuDA',
    'https://drive.google.com/uc?export=download&id=15zN1uu8zoDOTQPcb97N5aoQTwklOLKrZ',
    'https://drive.google.com/uc?export=download&id=15q0geoXnqt6h4cBnQlK6T04XAHvDyHV7',
    'https://drive.google.com/uc?export=download&id=16-bGqc78TF86kll3eFyTAC0h1xzMf7Bp',
    'https://drive.google.com/uc?export=download&id=13GTItLpAS3bNMBBiLft2rLAcfH33dAJ4',
    'https://drive.google.com/uc?export=download&id=1BcYUbMt8SgrYPqbJYtL0PxVaMrpZCFmk',
    'https://drive.google.com/uc?export=download&id=1BcgB19yJFlrw69NXjEmH_BbsG-skioNq',
    'https://drive.google.com/uc?export=download&id=1BdKmuoKiNeT9zk3TPua3mfCDP_WIdn8A',
    'https://drive.google.com/uc?export=download&id=1BgNv9YDwcNmj46xMoRS-4NfYJU0VgoM5',
    'https://drive.google.com/uc?export=download&id=1Bi8HGN8hNyKYJpF1x4vs-JFO-lnpitB1',
    'https://drive.google.com/uc?export=download&id=1Bo5JdjeVxN5vqKmcisJrf82MohMzUk2R',
    'https://drive.google.com/uc?export=download&id=1BtRJmO-b32DfP5MFcMkOXo1lKR4Ia15r',
    'https://drive.google.com/uc?export=download&id=1BuQBfsCcFNxG1sznvXFA0zaH-FMPkGEL',
    'https://drive.google.com/uc?export=download&id=1Bya73P-j8GvK4Mbmd9U9g5P3inT_xsLH',
    'https://drive.google.com/uc?export=download&id=1C1RfDQxG7dFfCkTrzjeDGbKN9naxKP9e',
    'https://drive.google.com/uc?export=download&id=1C6PVhfkO8OWTjunyqh3BAXupc6Ja8VK8',
    'https://drive.google.com/uc?export=download&id=1C9sYBRDGUUEVIysIidtggitSlL7-XOkF',
    '',
    '',
  ];

  void shareVideo(int index) async {
    String url = videoUrl[index];
    await Share.share('Gift From (The Secrets of Universe) App: $url');
  }

  List commentItem = [
    "User1",
    "User2",
    "User3",
    "User4",
    "User5",
    "User6",
    "User7",
    "User8",
    "User9",
    "User10",
    "User11",
    "User12",
    "User13",
    "User14",
    "User15",
    "User16",
    "User17",
    "User18",
    "User19",
    "User20",
  ];
  List<String> commentSubtitle = [
    "Good!",
    "Wow it nice",
    "Beautiful",
    "Wow",
    "Nice",
    "I like this",
    "Incredible",
    "Nice",
    "Good",
    "Very good",
    "Good!",
    "Wow it nice",
    "Beautiful",
    "Wow",
    "Nice",
    "I like this",
    "Incredible",
    "Nice",
    "Good",
    "Very good"
  ];
  @override
  void initState() {
    super.initState();
    selectedItems = List.generate(commentItem.length, (index) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
            color: isFavorite ? Colors.red : Colors.white,
          ),
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
          iconSize: itemSize,
        ),
        const Text(
          "1.5M",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        ),
        const SizedBox(
          height: 10,
        ),
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return DraggableScrollableSheet(
                  expand: false,
                  builder: (BuildContext context, ScrollController scrollController) {
                    return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return Container(
                          color: Colors.deepPurple,
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 6,
                                margin: const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                              const Text(
                                'Comments',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  controller: scrollController,
                                  itemCount: commentItem.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return ListTile(
                                      title: Text(
                                        commentItem[index],
                                        style: const TextStyle(color: Colors.white),
                                      ),
                                      subtitle: Text(
                                        commentSubtitle[index],
                                        style: const TextStyle(color: Colors.white),
                                      ),
                                      trailing: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              selectedItems[index]
                                                  ? Icons.favorite
                                                  : Icons.favorite_border_outlined,
                                              color: isFavorite ? Colors.red : Colors.white,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                selectedItems[index] =
                                                !selectedItems[index];
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
            );
          },
          icon: const Icon(
            Icons.chat_bubble_outline,
            color: Colors.white,
          ),
          iconSize: itemSize,
        ),
        const Text("55k",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
        IconButton(
          onPressed: () async {
            shareVideo(widget.currentVideoIndex);
          },
          icon: const Icon(
            Icons.send_outlined,
            color: Colors.white,
          ),
          iconSize: itemSize,
        ),
        const Text("40k",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
        IconButton(
          onPressed: () {
            BottomSheetHelper.showBottomSheet(
              context,
              widget.onSaveVideo,
                  (message) => widget.onSendReport(message),
            );
          },
          icon: const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          iconSize: itemSize,
        ),
        const SizedBox(height: 5,),
        InkWell(
          onTap: () async {
            launch("https://www.instagram.com/shir.zad01?igsh=eGd6eGVodTFzODcy");
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/Instagram.jpg"))),
          ),
        ),
        const SizedBox(height: 20,)
      ],
    );
  }
}

class BottomSheetHelper {
  static void showBottomSheet(
      BuildContext context,
      VoidCallback onSave,
      Function(String) onSendReport,
      ) {
    showModalBottomSheet(
      backgroundColor: Colors.deepPurple,
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              height: 4.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2.0),
              ),
            ),
            ListTile(
              trailing: const Icon(
                Icons.save_alt,
                color: Colors.white,
              ),
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'ذخیره ویدیو',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              onTap: () async {
                Navigator.pop(context);
                onSave();
              },
            ),
            ListTile(
              trailing: const Icon(
                Icons.report,
                color: Colors.white,
              ),
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'گزارش!',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              onTap: () async {
                Navigator.pop(context);
                _showReportDialog(context, onSendReport);
              },
            ),
          ],
        );
      },
    );
  }

  static void _showReportDialog(
      BuildContext context, Function(String) onSendReport) {
    final TextEditingController _controller = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'گزارش',
            textAlign: TextAlign.right,
          ),
          content: TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: "!در اینجا بنویسید",
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              alignLabelWithHint: true,
            ),
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            maxLines: 3,
          ),
          actions: [
            TextButton(
              child: const Text(
                'لغو',
                style: TextStyle(color: Colors.deepPurple, fontSize: 17),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(
                'ارسال',
                style: TextStyle(color: Colors.deepPurple, fontSize: 17),
              ),
              onPressed: () {
                String message = _controller.text;
                Navigator.of(context).pop();
                onSendReport(message);
              },
            ),
          ],
        );
      },
    );
  }
}
