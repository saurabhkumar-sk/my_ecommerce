import 'package:flutter/material.dart';
import 'package:my_ecommerce/components/appbar.dart';
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
            const TextFieldWidget(),
            StaggeredGridView.countBuilder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              crossAxisCount: 4,
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
                        Text(
                          favroiteImages[index].productName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          favroiteImages[index].productDescription,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          favroiteImages[index].price,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        // Icon(favroiteImages[index].icon)
                      ],
                    ))
                  ],
                ),
              ),
              staggeredTileBuilder: (int index) {
                if (index.isEven) {
                  return const StaggeredTile.count(2, 2.45);
                } else {
                  return const StaggeredTile.count(2, 3.05);
                }
              },
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ],
        ),
      ),
    );
  }
}
