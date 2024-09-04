import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:url_launcher/url_launcher.dart';
class ReelDetail extends StatefulWidget {
  final String description; // اضافه شده

  const ReelDetail({super.key, required this.description});
  @override
  State<ReelDetail> createState() => _ReelDetailState();
}

class _ReelDetailState extends State<ReelDetail> {


  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
         ListTile(
          dense: true,
          minLeadingWidth: 0,
          horizontalTitleGap: 12,
          title: const Text(
            "The Secrets of Universe",
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          leading: InkWell(
            onTap: (){
              launch("https://www.instagram.com/shir.zad01?igsh=eGd6eGVodTFzODcy");
            },
            child: const CircleAvatar(
              radius: 17,
              backgroundImage: AssetImage("assets/Instagram.jpg"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ExpandableText(
            widget.description,textDirection: TextDirection.rtl,textAlign: TextAlign.right,
            style: const TextStyle(
                fontSize: 13.5, color: Colors.white, fontWeight: FontWeight.w400),
            collapseText: "less",
            expandOnTextTap: true,
            collapseOnTextTap: true,
            maxLines: 2,
            linkColor: Colors.grey,
            expandText: "More",
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}
