void main() {
  //task1
  List items = [
    74,
    "ahmed",
    12,
    "Kero",
    4,
    "mohamed",
    "Ali",
    53,
    87,
    "osama",
    12,
    24,
  ];
  List names = [];
  List nums = [];
  // int counter = 0;
  for (var element in items) {
    if (element is String) {
      names.add(element);
    } else if (element is int) {
      nums.add(element);
    }
  }
  print('Names : $names');
  print('Numbers : $nums');

  if (names.contains('ahmed') && names.contains('mohamed')) {
    print(
        'ahmed and Mohamed is her together , ahmed in index ${names.indexOf('ahmed')} , and Mohamed in index ${names.indexOf('mohamed')}');
  }
  // for (var element in names) {
  //   if (element == 'mohamed') {
  //     counter++;

  //   } else if (element == 'ahmed') {
  //     counter++;
  //   }
  // }
  // if (counter == 2) {}
  //make items unique
  nums = nums.toSet().toList();

  print('Unique List : $nums');

  nums.addAll([
    18,
    27,
    5,
    76,
    38,
  ]);
  nums.sort();
  print('Sorted List : $nums');

  //task 2
  print('');
  List<List> n = [
    [1, 2],
    [
      3,
      [4, 5]
    ]
  ];
  int sum = 0;
  int max = -999999999999999999;
  int min = 999999999999999999;
  for (var out in n) {
    for (var inn in out) {
      if (inn is int) {
        // print(inn);
        sum += inn;
        if (max < inn) {
          max = inn;
        }
        if (min > inn) {
          min = inn;
        }
      } else {
        for (int inin in inn) {
          // print(inin);
          sum += inin;
          if (max < inin) {
            max = inin;
          }
          if (min > inin) {
            min = inin;
          }
        }
      }
    }
  }

  print('Sum : $sum');
  print('Max : $max');
  print('Min : $min');
}
