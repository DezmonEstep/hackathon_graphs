import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

final List<int> _items = List<int>.generate(51, (int index) => index);
var _prices = ["40"];
bool shadowColor = false;
double? scrolledUnderElevation;

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: _items.length,
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
              alignment: Alignment.center,
              // tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: _items[index].isOdd ? oddItemColor : evenItemColor,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Slidable(
                    // Specify a key if the Slidable is dismissible.
                    key: const ValueKey(0),

                    // The start action pane is the one at the left or the top side.
                    startActionPane: ActionPane(
                      // A motion is a widget used to control how the pane animates.
                      motion: const ScrollMotion(),

                      // A pane can dismiss the Slidable.
                      dismissible: DismissiblePane(onDismissed: () {}),

                      // All actions are defined in the children parameter.
                      children: const [
                        // A SlidableAction can have an icon and/or a label.
                        SlidableAction(
                          onPressed: null,
                          backgroundColor: Color(0xFFFE4A49),
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Cancel',
                        ),
                      ],
                    ),

                    // The end action pane is the one at the right or the bottom side.
                    endActionPane: const ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          // An action can be bigger than the others.

                          flex: 2,
                          onPressed: null,
                          backgroundColor: Color(0xFF7BC043),
                          foregroundColor: Colors.white,
                          icon: Icons.archive,
                          label: "40\$",
                        ),
                      ],
                    ),

                    // The child of the Slidable is what the user sees when the
                    // component is not dragged.
                    child: Image.asset(
                        '/home/dezmon/Documents/Hackathon/hackathon_graphs/index.png')),
              ));
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: OverflowBar(
            overflowAlignment: OverflowBarAlignment.center,
            alignment: MainAxisAlignment.center,
            overflowSpacing: 5.0,
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: () {
                  shadowColor = !shadowColor;
                },
                icon: Icon(
                  shadowColor ? Icons.visibility_off : Icons.visibility,
                ),
                label: const Text('shadow color'),
              ),
              const SizedBox(width: 5),
              ElevatedButton.icon(
                onPressed: () {
                  if (scrolledUnderElevation == null) {
                    // Default elevation is 3.0, increment by 1.0.
                    scrolledUnderElevation = 4.0;
                  } else {
                    scrolledUnderElevation = scrolledUnderElevation! + 1.0;
                  }
                },
                icon: const Icon(Icons.add),
                label: Text(
                  'scrolledUnderElevation: ${scrolledUnderElevation ?? 'default'}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
