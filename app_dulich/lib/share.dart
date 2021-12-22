import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Vịnh Hạ Long',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Quảng Ninh, Việt Nam',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.linked_camera,
            color: Colors.red[500],
          ),
          const Text('15'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Vịnh Hạ Long thuộc tỉnh Quảng Ninh, nằm ở phía Đông Bắc nước ta, diện tích khoảng'
        '1.553km2 với 1.969 hòn đảo lô nhô tạo nên những cảnh sắc kỳ thú. '
        'Sự hiện diện của Vịnh và những hòn đảo trên Vịnh là những minh chứng độc đáo về lịch'
        'sử phát triển của trái đất, bao gồm đặc điểm địa chất và quá trình vận động,'
        'phát triển liên tục của dạng địa hình Karst hệ Fengcong và Fengling.'
        ' Địa hình đặc biệt của Vịnh Hạ Long có liên quan chặt chẽ tới lịch '
        'sử khí hậu và quá trình vận động kiến tạo của trái đất.'
        ' Những hòn đảo ở đây là mẫu hình khá lý tưởng về Karst hình thành trong'
        ' điều kiện nhiệt đới, ẩm. Toàn bộ khu vực Vịnh Hạ Long là một cảnh quan Karst'
        ' qua nhiều triệu năm, với các tháp karst hình chóp, hình tháp, bị bào mòn,'
        ' tạo nên cảnh đẹp nổi bật, độc đáo toàn thế giới.',
        softWrap: true,
      ),
    );
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.linked_camera, 'LIKE'),
        _buildButtonColumn(color, Icons.comment, 'COMMENT'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      title: 'Du Lịch',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Share Bài Viết'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/vhl.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
