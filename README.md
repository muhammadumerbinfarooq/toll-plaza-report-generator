# Toll Plaza Report Generator

A simple toll plaza report generator written in Dart. This project allows users to generate reports on toll collections, including total vehicles and toll amounts, with an option for daily filtering.

## Description

The Toll Plaza Report Generator is a basic Dart application that provides a summary of toll plaza transactions. It can be used to count vehicles, calculate toll collections, and generate daily reports. This project is an excellent way to practice Dart programming and understand data handling in a toll management system.

## Features

- **Calculate Total Toll**: Calculate the total toll collected from all transactions.
- **Count Vehicles**: Track the total number of vehicles that passed through the toll plaza.
- **Daily Report**: Filter transactions to generate a report for the current day.

## Requirements

- Dart SDK

## Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/toll-plaza-report-generator.git
    ```

2. **Navigate to the project directory:**
    ```bash
    cd toll-plaza-report-generator
    ```

## Contributing

Contributions are welcome! If you have any suggestions or improvements, please feel free to submit an issue or a pull request. Here are some ways you can contribute:

- Report bugs and issues.
- Suggest new features or enhancements.
- Improve documentation.
- Submit pull requests with improvements or fixes.

## Usage

1. Run the Dart script:
    ```bash
    dart toll_report_generator.dart
    ```

2. Use the following functions within the script to interact with the toll transactions:

    - **Generate the Report**:
        ```dart
        generateReport(transactions);
        ```

3. Modify the list of `transactions` in the Dart file to simulate different inputs.

## Example Output

```plaintext
---- Toll Plaza Report ----
Total Vehicles: 5
Total Toll Collected: $32.0

---- Today's Report ----
Vehicles Today: 3
Toll Collected Today: $17.0
