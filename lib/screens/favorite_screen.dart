import 'package:flutter/material.dart';
import 'package:my_ecommerce/components/appbar.dart';
import 'package:my_ecommerce/components/text.dart';
import 'package:my_ecommerce/components/textfield.dart';
import 'package:my_ecommerce/database/database.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteStateScreen();
}

class _FavoriteStateScreen extends State<FavoriteScreen> {
  bool small = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(shape: BeveledRectangleBorder()),
      appBar: AppBar(
        title: const AppbarTitle(),
        actions: const [AppbarActionWidget()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const TextFieldWidget(),
            const TextWidgets(),
            const SizedBox(height: 17),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: StaggeredGridView.countBuilder(
                // gridDelegate: SliverStaggeredGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                crossAxisCount: 2,
                itemCount: favroiteImages.length,
                itemBuilder: (BuildContext context, int index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: MyColors.primarywhite,
                  child: Stack(
                    children: <Widget>[
                      GridTile(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(favroiteImages[index].image),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              favroiteImages[index].productName,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              favroiteImages[index].productDescription,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 8),
                            child: Text(
                              favroiteImages[index].price,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          favroiteImages[index].icon,
                        ],
                      ))
                    ],
                  ),
                ),
                staggeredTileBuilder: (int index) {
                  final height = small ? 1.5 : 1.8;
                  if (index.isEven) small = !small;
                  return StaggeredTile.count(1, height);
                },
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
