void main() {
  // TASK 1
  multiplicationTable();
}

void multiplicationTable() {
  print('TASK 1: Multiplication table 1-10');

  for (int digit = 1; digit <= 10; digit++) {
    for (int i = 1; i <= 10; i++) {
      print('$digit * $i = ${digit * i}');
    }
    print('');
  }
}
// TASK 2
String nextDay(int day, int month, int year) {
  if (!isValidDate(day, month, year)) {
    return 'invalid date';
  }

  final daysInCurrentMonth = daysInMonth(month, year);

  if (day < daysInCurrentMonth) {
    return formatDate(day + 1, month, year);
  }

  if (month < 12) {
    return formatDate(1, month + 1, year);
  }

  return formatDate(1, 1, year + 1);
}

bool isValidDate(int day, int month, int year) {
  if (year < 1 || month < 1 || month > 12 || day < 1) {
    return false;
  }

  return day <= daysInMonth(month, year);
}

int daysInMonth(int month, int year) {
  switch (month) {
    case 2:
      return isLeapYear(year) ? 29 : 28;
    case 4:
    case 6:
    case 9:
    case 11:
      return 30;
    default:
      return 31;
  }
}

bool isLeapYear(int year) {
  return year % 400 == 0 || (year % 4 == 0 && year % 100 != 0);
}

String formatDate(int day, int month, int year) {
  final dayText = day.toString().padLeft(2, '0');
  final monthText = month.toString().padLeft(2, '0');

  return '$dayText.$monthText.$year';
}


// TASK 3
int countVowels(String text) {
  const vowels = 'aeiou';
  int count = 0;

  for (int i = 0; i < text.length; i++) {
    if (vowels.contains(text[i].toLowerCase())) {
      count++;
    }
  }

  return count;
}

// TASK 4
Map<String, int> findMinMax(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('List must not be empty');
  }

  int min = numbers[0];
  int max = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }

    if (numbers[i] > max) {
      max = numbers[i];
    }
  }

  return {'min': min, 'max': max};
}

