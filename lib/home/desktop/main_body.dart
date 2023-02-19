import 'package:flutter/material.dart';
import '../common/util/my_box.dart';
import '../common/util/my_tile.dart';

class DesktopMainBody extends StatelessWidget {
  const DesktopMainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromARGB(255, 56, 56, 56),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    // first 4 boxes in grid
                    AspectRatio(
                      aspectRatio: 4,
                      child: SizedBox(
                        width: double.infinity,
                        child: GridView.builder(
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return MyBox();
                          },
                        ),
                      ),
                    ),

                    // list of previous days
                    Expanded(
                      child: ListView.builder(
                        itemCount: 70,
                        itemBuilder: (context, index) {
                          return const MyTile();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // second half of page
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(255, 90, 90, 90),
                        ),
                      ),
                    ),
                    // list of stuff
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 90, 90, 90),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
