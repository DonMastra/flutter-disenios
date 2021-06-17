import 'package:flutter/material.dart';

import 'package:disenio/widgets/custom_bottom_navigationbar.dart';
import 'package:disenio/widgets/page_title.dart';
import 'package:disenio/widgets/background.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titles
          PageTitle()
        ],
      ),
    );
  }
}
