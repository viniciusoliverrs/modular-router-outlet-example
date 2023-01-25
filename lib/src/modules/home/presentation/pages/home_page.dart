import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final leading = SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          ListTile(
            title: const Text('Page 1'),
            onTap: () => Modular.to.navigate('/page1'),
          ),
          ListTile(
            title: const Text('Page 2'),
            onTap: () => Modular.to.navigate('/page2'),
          ),
          ListTile(
            title: const Text('Page 3'),
            onTap: () => Modular.to.navigate('/page3'),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Row(
        children: [
          leading,
          Container(width: 2, color: Colors.black45),
          const Expanded(
            child: RouterOutlet(),
          ),
        ],
      ),
    );
  }
}
