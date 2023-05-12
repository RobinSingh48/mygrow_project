import 'package:flutter/material.dart';
import 'package:mygrow_software_project/App_Manager/media_query_utils.dart';
import 'package:mygrow_software_project/App_Manager/string_manager.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';


class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  TextEditingController amountController = TextEditingController();

     var _razorpay = Razorpay();


     @override
  void initState() {
       _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
       _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
       _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }


  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print("payment successfully Done");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print("payment Response Failed");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: Utils.getHeight(context)/20),
            child: Center(child: Text("Pay to Admin",style: TextStyle(fontSize: AppFontSize.s24),)),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/10,vertical: Utils.getHeight(context)/10),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: amountController,
              decoration: InputDecoration(
                hintText: "Enter Amount",
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,width: 2,style: BorderStyle.solid)
                )
              )
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.green),
            ),
              onPressed: (){
                var options = {
                  'key': '<YOUR_KEY_HERE>',
                  'amount': (int.parse(amountController.text.trim())*100).toString(),
                  'name': 'User Name in Future',
                  'description': 'Fine T-Shirt',
                  'prefill': {
                    'contact': '8888888888',
                    'email': 'test@razorpay.com'
                  }
                };
              }, child: Text("Pay Amount",style: TextStyle(fontSize: AppFontSize.s18),))
        ],
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _razorpay.clear();
  }
}

