import 'package:flutter/material.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _MeterScreenState();
}

class _MeterScreenState extends State<InterestScreen> {
  final keyform = GlobalKey<FormState>();
  final principleControlar = TextEditingController();
  final rateControlar = TextEditingController();
  final timeControlar = TextEditingController();
  double interest = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('Interest Calculator'),
      ),
      body: Form(
        key: keyform,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: principleControlar,
                decoration: InputDecoration(hintText: 'principle amount'),
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'feild is need';
                  }
                },
              ),
              SizedBox(height: 16,),
              TextFormField(
                controller: rateControlar,
                decoration: InputDecoration(hintText: 'rate amount'),
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'feild is need';
                  }
                },
              ),
              SizedBox(height: 16,),
              TextFormField(
                controller: timeControlar,
                decoration: InputDecoration(hintText: 'time'),
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'feild is need';
                  }
                },
              ),
              SizedBox(height: 16,),
              ElevatedButton(onPressed: (){

                if(keyform.currentState?.validate() ?? false){
                  int principle = int.parse(principleControlar.text);
                int rate = int.parse(rateControlar.text);
                int time = int.parse(timeControlar.text);
                interest = (principle*rate*time)/100;
                setState(() {

                });}



              }, child: Text('Find Interest'),
              ),
              SizedBox(height: 25,),
              Text('Interest > ${interest.toString()}'),
            ],
          ),
        ),
      ),
    ));
  }
}
