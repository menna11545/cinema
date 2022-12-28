// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_import, file_names, non_constant_identifier_names, deprecated_member_use, avoid_print, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';


class Credit_Card_Page extends StatefulWidget {
  const Credit_Card_Page({Key? key}) : super(key: key);

  @override
  _Credit_Card_PageState createState() => _Credit_Card_PageState();
}

class _Credit_Card_PageState extends State<Credit_Card_Page> {
  String cardNumber = '';
  String expiryDate= '';
  String cardHolderName = '';
  String cvvCode= '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        leading: IconButton(
          iconSize: 30, icon: const Icon(Icons.arrow_back), onPressed: () {
            Navigator.pushNamed(context, "/payment");
          },
          // Navigator.pushNamed(context, "/welcome");

          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 228, 212, 94),
        title: Center(child: Text(' Credit Card View' ,)),
      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            CreditCardWidget(
             
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  showBackView: isCvvFocused,
                  obscureCardNumber: true,
                  obscureCardCvv: true, onCreditCardWidgetChange: (CreditCardBrand ) {  },),
            
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CreditCardForm (cardNumber: cardNumber,
                          expiryDate: expiryDate,
                          cardHolderName: cardHolderName,
                          cvvCode: cvvCode,
                          onCreditCardModelChange: onCreditCardModelChange,
                          themeColor: Color.fromARGB(255, 228, 212, 94),
                          formKey: formKey,
                          cardNumberDecoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Number',
                            hintText: 'xxxx xxxx xxxx xxxx'
                          ),
                          expiryDateDecoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Expired Date',
                              hintText: 'xx/xx'
                          ),
                          cvvCodeDecoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'CVV',
                              hintText: 'xxx'
                          ),
                          cardHolderDecoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Card Holder',
                          ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            primary: Color.fromARGB(255, 228, 212, 94)

                          ),
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              'validate',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'halter',
                                fontSize: 14,
                                package: 'flutter_credit_card',
                              ),
                            ),
                          ),
                        onPressed: (){
                            if(formKey.currentState!.validate()){
                              print('valid');
                              Navigator.pushNamed(context, "/PrintTickets");
                            }
                            else{
                              print('inValid');
                            }
                        },)
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel){
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}