import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  final List<Map<String, dynamic>> course = [
    {
      "image": "assets/js.png",
      "batch": "ব্যাচ ১১",
      "group": Icons.group,
      "set": "৩ সিট বাকি",
      "watch": Icons.timer,
      "timer": "১১ দিন বাকি",
      "title": "Full Stack Web Development With Javascript (MERN)",
      "button": "বিস্তারিত দেখি"
    },
    {
      "image": "assets/py.png",
      "batch": "ব্যাচ ৬",
      "group": Icons.group,
      "set": "৮৬ সিট বাকি",
      "watch": Icons.timer,
      "timer": "৪৫ দিন বাকি",
      "title": "Full Stack Web Development With Python, Django & React",
      "button": "বিস্তারিত দেখি"
    },
    {
      "image": "assets/flutter.png",
      "batch": "ব্যাচ ১১",
      "group": Icons.group,
      "set": "২ সিট বাকি",
      "title": "Full Stack Web Development With Flutter",
      "button": "বিস্তারিত দেখি"
    },
    {
      "image": "assets/php.png",
      "batch": "ব্যাচ ৯",
      "group": Icons.group,
      "set": "৮৭ সিট বাকি",
      "watch": Icons.timer,
      "timer": "৪৫ দিন বাকি",
      "title": "Full Stack Web Development With PHP, Laravel & Vue Js",
      "button": "বিস্তারিত দেখি"
    },
    {
      "image": "assets/asp.png",
      "batch": "ব্যাচ ৭",
      "group": Icons.group,
      "set": "৭৫ সিট বাকি",
      "watch": Icons.timer,
      "timer": "৩৭ দিন বাকি",
      "title": "Full Stack Web Development With ASP.NET",
      "button": "বিস্তারিত দেখি"
    },
    {
      "image": "assets/SQA.png",
      "batch": "ব্যাচ ১২",
      "group": Icons.group,
      "set": "৫ সিট বাকি",
      "watch": Icons.timer,
      "timer": "১৫ দিন বাকি",
      "title": "Software Quality Assurance (SQA)",
      "button": "বিস্তারিত দেখি"
    },
    {
      "image": "assets/dev.png",
      "batch": "ব্যাচ ৩",
      "group": Icons.group,
      "set": "৭৫ সিট বাকি",
      "watch": Icons.timer,
      "timer": "৩০ দিন বাকি",
      "title": "DevOps Engineer Training",
      "button": "বিস্তারিত দেখি"
    },
    {
      "image": "assets/code.png",
      "batch": "ব্যাচ ৫",
      "group": Icons.group,
      "set": "৫ সিট বাকি",
      "watch": Icons.timer,
      "timer": "১১ দিন বাকি",
      "title": "Full Stack Web Development With Javascript (MERN)",
      "button": "বিস্তারিত দেখি"
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    bool isSmallScreen = screenWidth <= 768;
    int count = isSmallScreen ? 2 : screenWidth <= 1024 ? 3 : 4;
    double fontsize = isSmallScreen ? 18 : 30;
         double aspectratio;
      if(screenWidth <= 768){
        aspectratio = 0.6;
      }else if(screenWidth <= 1024){
        aspectratio = 0.8;
      }else{
        aspectratio = 0.9;
      }
      double height;
      if(screenHeight <= 768){
        height = 100;
      }else if(screenHeight <= 1024){
        height = 170;
      }else{
        height = 200;
      }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Courses",
          style: TextStyle(
            color: Colors.greenAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  itemCount: course.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: count,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: aspectratio, // এখানে Aspect ratio ঠিক রাখলাম
                  ),
                  itemBuilder: (context, index) {
                    final item = course[index];

                    return Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,  // content অনুযায়ী মাত্রা নেবে
                          children: [
                            Image.asset(
                              item["image"],
                              width: double.infinity,
                              height: height,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 10),

                            isSmallScreen
                                ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (count > 2 && item["batch"] != null)
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    margin: const EdgeInsets.only(bottom: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white60,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text(
                                      item["batch"],
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                if (item["set"] != null)
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    margin: const EdgeInsets.only(bottom: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white60,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(item["group"], size: 16),
                                        const SizedBox(width: 4),
                                        Flexible(
                                          child: Text(
                                            item["set"],
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if (item["watch"] != null && item["timer"] != null)
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    margin: const EdgeInsets.only(bottom: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white54,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(item["watch"], size: 16),
                                        const SizedBox(width: 4),
                                        Flexible(
                                          child: Text(
                                            item["timer"],
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            )
                                : SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  if (item["batch"] != null)
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 8),
                                      margin: const EdgeInsets.only(right: 6),
                                      decoration: BoxDecoration(
                                        color: Colors.white60,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text(
                                        item["batch"],
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  if (item["set"] != null)
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 8),
                                      margin: const EdgeInsets.only(right: 6),
                                      decoration: BoxDecoration(
                                        color: Colors.white60,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(item["group"], size: 16),
                                          const SizedBox(width: 4),
                                          Text(
                                            item["set"],
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (item["watch"] != null && item["timer"] != null)
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 8),
                                      decoration: BoxDecoration(
                                        color: Colors.white54,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(item["watch"], size: 16),
                                          const SizedBox(width: 4),
                                          Text(
                                            item["timer"],
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 6),

                            Flexible(
                              fit: FlexFit.loose,
                              child: Center(
                                child: Text(
                                  item["title"],
                                  style: TextStyle(
                                    fontSize: fontsize,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                  maxLines: 3,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ),

                            const SizedBox(height: 6),

                            SizedBox(
                              width: double.infinity,
                              height: 40,  // Button height ফিক্স করলাম
                              child: ElevatedButton(
                                onPressed: () {
                                  print('Button clicked for: ${item["title"]}');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  item["button"],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),

              ),
            ],
          ),
        ),

    );
  }
}
