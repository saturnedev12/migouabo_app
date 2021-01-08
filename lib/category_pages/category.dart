import 'package:flutter/material.dart';
class Categorys extends StatefulWidget {
  @override
  _CategorysState createState() => _CategorysState();
}

class _CategorysState extends State<Categorys> {
  final routes = List.generate(20, (i) => 'test $i');

  final navigatorKey = GlobalKey<NavigatorState>();

  bool isMenuFixed(BuildContext context) {
    return MediaQuery.of(context).size.width > 300;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final menu = Container(
        color: theme.canvasColor,
        width: 100,
        child: SafeArea(
            right: false,
            child: Drawer(
              elevation: 0,
              child: ListView(
                children: <Widget>[
                  for (final s in routes)
                    ListTile(
                      title: Text(s,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {
                        // Using navigator key, because the widget is above nested navigator
                        navigatorKey.currentState.pushNamedAndRemoveUntil(s, (r) => false);

                        // navigatorKey.currentState.pushNamed(s);
                      },
                    ),
                ],
              ),
            )
        )
    );

    return Row(
      children: <Widget>[
        if (isMenuFixed(context))
          menu,
        Expanded(
          child: Navigator(
            key: navigatorKey,
            initialRoute: '/',
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                  builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text(settings.name),
                      ),
                      body: SafeArea(
                        child: Text(settings.name),
                      ),
                      drawer: isMenuFixed(context) ? null : menu,
                    );
                  },
                  settings: settings
              );
            },
          ),
        ),
      ],
    );
  }
}
