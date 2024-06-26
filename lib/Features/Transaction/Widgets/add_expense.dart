import 'package:flutter/material.dart';
import 'package:med_pay/Features/Transaction/Widgets/add_expense_sheet.dart';
import 'package:med_pay/Features/Transaction/Widgets/select_category.dart';
import 'package:med_pay/Features/Transaction/Widgets/add_income_date.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({Key? key});

  @override
  State<AddExpense> createState() => _AddIncomeState();
}

class _AddIncomeState extends State<AddExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add Expense",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Category",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return SelectCategory();
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select Category',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Amount",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade300, // Faint border color
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Amount",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Date",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return SelectDate();
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "DD/MM/YYYY",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Icon(Icons.calendar_month_outlined)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Time",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade300, // Faint border color
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "HH:MM:AM/PM",
                    suffixIcon: Icon(
                      Icons.access_time_outlined,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Description(Optional)",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Description",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 55),
              Center(
                child: Container(
                  width: 335,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.elliptical(50, 50)
                            )
                        ),
                        showDragHandle: true,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AddExpenseSheet(),
                            ],
                          );
                        },
                      );
                    },
                    child: Text(
                      'Add Expense',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff0D60D8),
                      side: BorderSide(
                        color: Color(0xff0D60D8),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}