import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class Page68 extends StatelessWidget {
  const Page68({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.vibration),
            onPressed: () => context.pop(),
          ),
          title: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.red,
            tabs: [
              Tab(
                text: "Following",
              ),
              Tab(
                text: "Explore",
              ),
              Tab(
                text: "Shanghai",
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => context.pop(),
            )
          ],
        ),
        body: TabBarView(children: [
          Feeds(),
          Feeds(),
          Feeds(),
        ]),
      ),
    );
  }
}

class Feeds extends StatelessWidget {
  const Feeds({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      padding: EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 12,
      ),
      itemCount: 20,
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 7,
      itemBuilder: (context, index) {
        // print(index % 2);
        if (index == 0) {
          return SizedBox(
            height: 100,
          );
        }
        return Column(
          children: [
            Container(
              height: 220,
              decoration: ShapeDecoration(
                color: Color(0xFFC4C4C4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              // width: 173,
              child: Text(
                'Write an enticing video title (Max 2 lines)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Author name',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Icon(Icons.favorite_outline),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        '132',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        );
      },
    );
  }
}
