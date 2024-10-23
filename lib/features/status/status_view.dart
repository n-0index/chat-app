import 'package:flutter/material.dart';
import 'views/widgets/status_view_body.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          body: StatusViewBody(),
        ));
  }
}

