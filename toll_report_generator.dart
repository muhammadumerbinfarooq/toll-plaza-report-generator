void main() {
  // Step 1: Define a list of mock toll transactions
  List<TollTransaction> transactions = [
    TollTransaction("Car", 5.0, DateTime.now().subtract(Duration(hours: 2))),
    TollTransaction("Truck", 10.0, DateTime.now().subtract(Duration(hours: 4))),
    TollTransaction("Bike", 2.0, DateTime.now().subtract(Duration(hours: 6))),
    TollTransaction("Car", 5.0, DateTime.now().subtract(Duration(days: 1))),
    TollTransaction("Truck", 10.0, DateTime.now().subtract(Duration(days: 1))),
  ];

  // Generate and display the report
  generateReport(transactions);
}

// Step 2: TollTransaction Class
class TollTransaction {
  String vehicleType;
  double tollAmount;
  DateTime dateTime;

  TollTransaction(this.vehicleType, this.tollAmount, this.dateTime);
}

// Step 3: Calculate total toll and vehicle count
double calculateTotalToll(List<TollTransaction> transactions) {
  return transactions.fold(0, (sum, transaction) => sum + transaction.tollAmount);
}

int countVehicles(List<TollTransaction> transactions) {
  return transactions.length;
}

// Optional: Filter transactions by date
List<TollTransaction> filterByDate(List<TollTransaction> transactions, DateTime startDate, DateTime endDate) {
  return transactions.where((transaction) => 
    transaction.dateTime.isAfter(startDate) && transaction.dateTime.isBefore(endDate)
  ).toList();
}

// Step 4: Generate and print the report
void generateReport(List<TollTransaction> transactions) {
  print("---- Toll Plaza Report ----");
  print("Total Vehicles: ${countVehicles(transactions)}");
  print("Total Toll Collected: \$${calculateTotalToll(transactions)}");

  // Optional: Generate a report for today's transactions only
  DateTime now = DateTime.now();
  List<TollTransaction> todayTransactions = filterByDate(transactions, DateTime(now.year, now.month, now.day), now);
  
  print("\n---- Today's Report ----");
  print("Vehicles Today: ${countVehicles(todayTransactions)}");
  print("Toll Collected Today: \$${calculateTotalToll(todayTransactions)}");
}
