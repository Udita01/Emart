import 'package:example/constants.dart';
import 'package:example/screens/home/home.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool _isCreditDebitSelected = false;
  bool _isPayPalSelected = false;
  bool _isApplePaySelected = false;
  final _formKey = GlobalKey<FormState>();
  bool _isFormValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment Screen',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: kcontentColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Payment Method Selection
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: const Text(
                    'Select Payment Method',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PaymentMethodCard(
                      icon: Icons.credit_card,
                      label: '  Credit/Debit ',
                      onPressed: () {
                        // Handle credit/debit card selection
                        setState(() {
                          _isCreditDebitSelected = true;
                          _isPayPalSelected = false;
                          _isApplePaySelected = false;
                        });
                      },
                      isSelected: _isCreditDebitSelected,
                    ),
                    PaymentMethodCard(
                      icon: Icons.paypal,
                      label: 'PayPal',
                      onPressed: () {
                        // Handle PayPal selection
                        setState(() {
                          _isPayPalSelected = true;
                          _isCreditDebitSelected = false;
                          _isApplePaySelected = false;
                        });
                      },
                      isSelected: _isPayPalSelected,
                    ),
                    PaymentMethodCard(
                      icon: Icons.apple_sharp,
                      label: 'Apple Pay',
                      onPressed: () {
                        // Handle Apple Pay selection
                        setState(() {
                          _isApplePaySelected = true;
                          _isCreditDebitSelected = false;
                          _isPayPalSelected = false;
                        });
                      },
                      isSelected: _isApplePaySelected,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                // Credit/Debit Card Form
                Container(
                  margin: const EdgeInsets.only(
                    top: 12,
                  ),
                  child: const Text(
                    'Credit/Debit Card Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                CardForm(
                  onCardNumberChanged: (value) {
                    // Handle card number change
                    _validateForm();
                  },
                  onExpMonthChanged: (value) {
                    // Handle expiration month change
                    _validateForm();
                  },
                  onExpYearChanged: (value) {
                    // Handle expiration year change
                    _validateForm();
                  },
                  onCvcChanged: (value) {
                    // Handle CVC change
                    _validateForm();
                  },
                ),

                // Payment Button
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _isFormValid
                      ? () {
                          // Handle payment submission

                          _showSnackBar(context);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kprimaryColor,
                    foregroundColor: kcontentColor,
                  ),
                  child: const Text(
                    'Pay Now',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _validateForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isFormValid = true;
      });
    } else {
      setState(() {
        _isFormValid = false;
      });
    }
  }

  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Order placed successfully',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: Color.fromRGBO(0, 77, 64, 1),
      ),
    );
  }
}

class PaymentMethodCard extends StatefulWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final bool isSelected;

  const PaymentMethodCard(
      {super.key,
      required this.icon,
      required this.label,
      required this.onPressed,
      required this.isSelected});

  @override
  State<PaymentMethodCard> createState() => _PaymentMethodCardState();
}

class _PaymentMethodCardState extends State<PaymentMethodCard> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
        widget.onPressed();
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.243,
        height: MediaQuery.of(context).size.height * 0.101,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
          color: _isSelected ? kprimaryColor : kcontentColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 40,
              color: _isSelected ? kcontentColor : Colors.black87,
            ),
            Text(
              widget.label,
              style: TextStyle(
                color: _isSelected ? Colors.white70 : Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardForm extends StatefulWidget {
  final ValueChanged<String> onCardNumberChanged;
  final ValueChanged<String> onExpMonthChanged;
  final ValueChanged<String> onExpYearChanged;
  final ValueChanged<String> onCvcChanged;

  const CardForm({
    super.key,
    required this.onCardNumberChanged,
    required this.onExpMonthChanged,
    required this.onExpYearChanged,
    required this.onCvcChanged,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CardFormState createState() => _CardFormState();
}

class _CardFormState extends State<CardForm> {
  final _cardNumberController = TextEditingController();
  final _expController = TextEditingController();
  final _cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _cardNumberController,
          decoration: const InputDecoration(labelText: 'Card Number'),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter card number';
            }
            return null;
          },
          onChanged: (value) {
            widget.onCardNumberChanged(value);
          },
          keyboardType: TextInputType.number,
          maxLength: 16,
        ),
        TextFormField(
          controller: _expController,
          decoration: const InputDecoration(labelText: 'Expiration Date'),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter expiration date';
            }
            return null;
          },
          onChanged: (value) {
            widget.onExpMonthChanged(value);
          },
          keyboardType: TextInputType.datetime,
        ),
        const SizedBox(
          height: 24,
        ),
        TextFormField(
          controller: _cvvController,
          decoration: const InputDecoration(labelText: 'CVV'),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter CVV number';
            }
            return null;
          },
          onChanged: (value) {
            widget.onCvcChanged(value);
          },
          keyboardType: TextInputType.number,
          maxLength: 3,
        ),
      ],
    );
  }
}
