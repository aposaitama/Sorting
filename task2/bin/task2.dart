import 'dart:collection';
import 'dart:math';

final class EntryItem extends LinkedListEntry<EntryItem> {
  int value;
  EntryItem(this.value);

  @override
  String toString() => 'EntryItem(value: $value)';
}

void timeCounter(Function operation, String description) {
  final stopwatch = Stopwatch()..start();
  operation(); // Execute the operation here
  stopwatch.stop();
  print('$description: ${stopwatch.elapsed}');
}

void main() {
  final rng = Random();

  // Create a List and fill it with random integers
  final dataList = List.generate(1000000, (_) => rng.nextInt(100));

  // Create a LinkedList and fill it with random integers
  final linkedList = LinkedList<EntryItem>();
  for (int i = 0; i < 1000000; i++) {
    linkedList.add(EntryItem(rng.nextInt(100)));
  }

  // Measure time for adding an item at the end of the List
  timeCounter(() {
    dataList.add(rng.nextInt(100));
  }, 'Add item at the end of List');

  // Measure time for adding an item at the end of the LinkedList
  timeCounter(() {
    linkedList.add(EntryItem(rng.nextInt(100)));
  }, 'Add item at the end of LinkedList');

  // Measure time for adding an item in the middle of the List
  timeCounter(() {
    dataList.insert(dataList.length ~/ 2, rng.nextInt(100));
  }, 'Add item in the middle of List');

  // Measure time for adding an item in the middle of the LinkedList
  // timeCounter(() {
  //   final middleItem = linkedList.elementAt(linkedList.length ~/ 2);
  //   linkedList.insertAfter(middleItem, EntryItem(rng.nextInt(100)));
  // }, 'Add item in the middle of LinkedList');

  // Measure time for retrieving the last item from the List
  timeCounter(() {
    final lastItem = dataList.last;
  }, 'Get last item from List');

  // Measure time for retrieving the last item from the LinkedList
  timeCounter(() {
    final lastItem = linkedList.last;
  }, 'Get last item from LinkedList');

  // Measure time for retrieving an item from the middle of the List
  timeCounter(() {
    final middleItem = dataList[dataList.length ~/ 2];
  }, 'Get middle item from List');

  // Measure time for retrieving an item from the middle of the LinkedList
  timeCounter(() {
    final middleItem = linkedList.elementAt(linkedList.length ~/ 2);
  }, 'Get middle item from LinkedList');

  // Measure time for removing the last item from the List
  timeCounter(() {
    dataList.removeLast();
  }, 'Remove last item from List');

  // Measure time for removing the last item from the LinkedList
  timeCounter(() {
    linkedList.remove(linkedList.last);
  }, 'Remove last item from LinkedList');

  // Measure time for removing an item from the middle of the List
  timeCounter(() {
    dataList.removeAt(dataList.length ~/ 2);
  }, 'Remove middle item from List');

  // Measure time for removing an item from the middle of the LinkedList
  timeCounter(() {
    final middleItem = linkedList.elementAt(linkedList.length ~/ 2);
    linkedList.remove(middleItem);
  }, 'Remove middle item from LinkedList');
}
