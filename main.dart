import 'dart:io';

// Function to calculate total cost and per person share
Map<String, double> calculateMealCost(double mealCost, int numberOfPeople, double tipPercentage) {
  double tipAmount = mealCost * (tipPercentage / 100);
  double totalToPay = mealCost + tipAmount;
  double amountPerPerson = totalToPay / numberOfPeople;

  return {
    'totalToPay': totalToPay,
    'amountPerPerson': amountPerPerson,
  };
}

void main() {
  // Example of using the function
  double mealCost = 100.0;
  int numberOfPeople = 4;
  double tipPercentage = 15.0;

  Map<String, double> result = calculateMealCost(mealCost, numberOfPeople, tipPercentage);

  // Output the results
  print('Total to pay (including tip): \$${result['totalToPay']!.toStringAsFixed(2)}');
  print('Each person should pay: \$${result['amountPerPerson']!.toStringAsFixed(2)}');
}
