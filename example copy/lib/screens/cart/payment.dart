import 'package:example/screens/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:example/constants.dart';
import 'package:example/providers/cart_provider.dart';

enum PaymentMethod {
  creditDebit,
  paypal,
  applePay,
}

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  PaymentMethod? _selectedPaymentMethod;
  bool _isFormValid = false;

  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expMonthController = TextEditingController();
  final TextEditingController _expYearController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _upiIdController = TextEditingController();
  final TextEditingController _appleIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment Screen',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: kcontentColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Payment Method Selection
            const Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Text(
                'Select Payment Method',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            PaymentMethodCard(
              icon: Icons.credit_card,
              label: 'Credit/Debit',
              isSelected: _selectedPaymentMethod == PaymentMethod.creditDebit,
              onPressed: () {
                setState(() {
                  _selectedPaymentMethod = PaymentMethod.creditDebit;
                });
              },
            ),
            if (_selectedPaymentMethod == PaymentMethod.creditDebit)
              CardForm(
                cardNumberController: _cardNumberController,
                expMonthController: _expMonthController,
                expYearController: _expYearController,
                cvvController: _cvvController,
                onCardNumberChanged: _validateForm,
                onExpMonthChanged: _validateForm,
                onExpYearChanged: _validateForm,
                onCvcChanged: _validateForm,
              ),
            PaymentMethodCard(
              icon: Icons.paypal,
              label: 'PayPal',
              isSelected: _selectedPaymentMethod == PaymentMethod.paypal,
              onPressed: () {
                setState(() {
                  _selectedPaymentMethod = PaymentMethod.paypal;
                });
              },
            ),
            if (_selectedPaymentMethod == PaymentMethod.paypal)
              TextFormField(
                controller: _upiIdController,
                decoration: const InputDecoration(
                  labelText: 'Enter UPI ID',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter UPI ID';
                  }
                  return null;
                },
                onChanged: _validateForm,
              ),
            PaymentMethodCard(
              icon: Icons.apple_sharp,
              label: 'Apple Pay',
              isSelected: _selectedPaymentMethod == PaymentMethod.applePay,
              onPressed: () {
                setState(() {
                  _selectedPaymentMethod = PaymentMethod.applePay;
                });
              },
            ),
            if (_selectedPaymentMethod == PaymentMethod.applePay)
              TextFormField(
                controller: _appleIdController,
                decoration: const InputDecoration(
                  labelText: 'Enter Apple ID',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter Apple ID';
                  }
                  return null;
                },
                onChanged: _validateForm,
              ),
            // Payment Button
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isFormValid && _selectedPaymentMethod != null
                    ? () {
                        _showSnackBar(context);
                        provider.clearCart();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const BottomNavBar(),
                          ),
                        );
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  backgroundColor: kprimaryColor,
                  foregroundColor: kcontentColor,
                ),
                child: const Text(
                  'Pay Now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _validateForm(String _) {
    bool isCardValid = _cardNumberController.text.isNotEmpty &&
        _expMonthController.text.isNotEmpty &&
        _expYearController.text.isNotEmpty &&
        _cvvController.text.isNotEmpty;

    bool isPayPalValid = _upiIdController.text.isNotEmpty;

    bool isApplePayValid = _appleIdController.text.isNotEmpty;

    setState(() {
      _isFormValid = (_selectedPaymentMethod == PaymentMethod.creditDebit &&
              isCardValid) ||
          (_selectedPaymentMethod == PaymentMethod.paypal && isPayPalValid) ||
          (_selectedPaymentMethod == PaymentMethod.applePay && isApplePayValid);
    });
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

  @override
  void dispose() {
    _cardNumberController.dispose();
    _expMonthController.dispose();
    _expYearController.dispose();
    _cvvController.dispose();
    _upiIdController.dispose();
    _appleIdController.dispose();
    super.dispose();
  }
}

class PaymentMethodCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final bool isSelected;

  const PaymentMethodCard({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 120,
        height: 120,
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? kprimaryColor : Colors.grey),
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? kprimaryColor : kcontentColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: isSelected ? Colors.white : Colors.black,
            ),
            const SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isSelected ? Colors.white70 : Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardForm extends StatelessWidget {
  final TextEditingController cardNumberController;
  final TextEditingController expMonthController;
  final TextEditingController expYearController;
  final TextEditingController cvvController;
  final ValueChanged<String> onCardNumberChanged;
  final ValueChanged<String> onExpMonthChanged;
  final ValueChanged<String> onExpYearChanged;
  final ValueChanged<String> onCvcChanged;

  const CardForm({
    super.key,
    required this.cardNumberController,
    required this.expMonthController,
    required this.expYearController,
    required this.cvvController,
    required this.onCardNumberChanged,
    required this.onExpMonthChanged,
    required this.onExpYearChanged,
    required this.onCvcChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: cardNumberController,
          decoration: const InputDecoration(labelText: 'Card Number'),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter card number';
            }
            return null;
          },
          onChanged: onCardNumberChanged,
          keyboardType: TextInputType.number,
          maxLength: 16,
        ),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: expMonthController,
                decoration: const InputDecoration(labelText: 'Exp. Month'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter expiration month';
                  }
                  return null;
                },
                onChanged: onExpMonthChanged,
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: TextFormField(
                controller: expYearController,
                decoration: const InputDecoration(labelText: 'Exp. Year'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter expiration year';
                  }
                  return null;
                },
                onChanged: onExpYearChanged,
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        TextFormField(
          controller: cvvController,
          decoration: const InputDecoration(labelText: 'CVV'),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter CVV number';
            }
            return null;
          },
          onChanged: onCvcChanged,
          keyboardType: TextInputType.number,
          maxLength: 3,
        ),
      ],
    );
  }
}
