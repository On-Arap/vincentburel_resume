import 'package:flutter/material.dart';
import '../constant/destinations.dart';
import '../pages/profil_page.dart';

class DestinationView extends StatefulWidget {
  const DestinationView({
    super.key,
    required this.destination,
    required this.navigatorKey,
  });

  final Destination destination;
  final Key navigatorKey;

  @override
  State<DestinationView> createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                {
                  switch (widget.destination.title) {
                    case 'Profil':
                      return ProfilPage(destination: widget.destination);
                    default:
                      return ProfilPage(destination: widget.destination);
                  }
                }
              // case '/recipe':
              //   {
              //     final data = settings.arguments as Map<String, dynamic>;
              //     return RecipePage(
              //       destination: widget.destination,
              //       title: data['title'],
              //       imageUrl: data['imageUrl'],
              //     );
              //   }
            }
            assert(false);
            return const SizedBox();
          },
        );
      },
    );
  }
}
