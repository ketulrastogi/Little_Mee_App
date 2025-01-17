import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/Books/BooksScreen_ViewModel.dart';

class BooksScreenView extends StatelessWidget {
  final Map<String, dynamic> bookDetails;

  const BooksScreenView({Key key, this.bookDetails}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BooksScreenViewModel>.reactive(
      onModelReady: (model) => model.getBooks(),
      viewModelBuilder: () => BooksScreenViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Little Mee',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontFamily: 'Headline',
                    ),
              ),
              // titleSpacing: 4.0,
              centerTitle: true,
              iconTheme: IconThemeData(
                size: 40.0,
                color: Colors.white,
              ),
              // automaticallyImplyLeading: false,
              backgroundColor: Colors.grey.shade900,
            ),
            body: Center(
              child: (model.bookList.length > 0)
                  ? ListView.builder(
                      padding: EdgeInsets.all(16.0),
                      itemCount: model.bookList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Container(
                            height: 180.0,
                            child: Row(
                              children: [
                                Container(
                                  height: 150.0,
                                  width: 150.0,
                                  padding: EdgeInsets.all(16.0),
                                  child: Image.network(
                                    '${model.bookList[index]['image']}',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            '${model.bookList[index]['book']}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5
                                                .copyWith(
                                                  fontFamily: 'Headline',
                                                ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Container(
                                          child: Text(
                                            '10 Chapters',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1
                                                .copyWith(
                                                  fontFamily: 'Body',
                                                ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Text(
                                          '6 Videos',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              .copyWith(
                                                fontFamily: 'Body',
                                              ),
                                        ),
                                        Spacer(),
                                        Container(
                                          child: MaterialButton(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 48.0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Text(
                                              'Open Book',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .button
                                                  .copyWith(
                                                    fontFamily: 'Body',
                                                  ),
                                            ),
                                            color:
                                                Theme.of(context).primaryColor,
                                            textColor: Colors.white,
                                            onPressed: () {
                                              // model.navigateToBooksScreen();
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        'No Kits Available',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontFamily: 'Headline',
                            ),
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}
