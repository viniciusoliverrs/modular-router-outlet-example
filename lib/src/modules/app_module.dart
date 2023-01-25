import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home/presentation/pages/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => HomePage(), 
        transition: TransitionType.fadeIn,
        children: [
          ChildRoute('/page1',
              child: (context, args) =>
                  const InternalPage(title: 'page 1', color: Colors.red)),
          ChildRoute('/page2',
              child: (context, args) =>
                  const InternalPage(title: 'page 2', color: Colors.amber)),
          ChildRoute('/page3',
              child: (context, args) =>
                  const InternalPage(title: 'page 3', color: Colors.green)),
        ]),
      ];
}

class InternalPage extends StatelessWidget {
  final String title;
  final Color color;
  const InternalPage({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: Center(child: Text(title)),
    );
  }
}
