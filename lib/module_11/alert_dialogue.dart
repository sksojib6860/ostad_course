import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ALertDiologe extends StatelessWidget {
  const ALertDiologe({super.key});

  @override
  Widget build(BuildContext context) {
    alertDialog() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Alert Dialogue'),
          content: Text('Are you sure........'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Yes'),
            ),
          ],
        ),
      );
    }

    alertDialogWithIcon() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Alert Dialogue with icon'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(Icons.warning, color: Colors.red, size: 40),
                  SizedBox(width: 20),
                  Text('Waring', style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.grey),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('I agree', style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    DialogWithOption() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => SimpleDialog(
          title: Text('Simple Dialogue Options'),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Option 1'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Option 2'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Option 3'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Option 4'),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                inputFormatters: [
                  //FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  FilteringTextInputFormatter.allow(RegExp(r'[a-z, A-Z]')),
                ],

                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
          ],
        ),
      );
    }

    BottomSheetDialog() {
      showModalBottomSheet(
        context: context,
        barrierLabel: 'Close',
        builder: (context) => Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10),
              Text('chose options'),
              ListTile(
                title: Text('Sojeb chandra'),
                subtitle: Text('01768601533'),
              ),
              ListTile(
                title: Text('Doya Bala'),
                subtitle: Text('013036738696'),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                title: Text('Shuvo Kumar'),
                subtitle: Text('01300382278'),
              ),
              ListTile(
                title: Text('Porimol chandra'),
                subtitle: Text('01745910541'),
              ),
              ListTile(title: Text('Josn Rani'), subtitle: Text('01735486878')),
            ],
          ),
        ),
      );
    }

    diaLogueImage() {
      showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(80),
                  border: Border.all(width: 10),
                ),
                child: Column(
                  children: [
                    Image.network(
                      'https://th.bing.com/th/id/R.41431589a8b819079e50b24685e87825?rik=jC4l1tBSXyXGbA&riu=http%3a%2f%2fphotos.wikimapia.org%2fp%2f00%2f01%2f80%2f61%2f98_big.jpg&ehk=KnUkkpVvKw3NNho%2f4dOPKSGFAClqgFK60MelZ3f0bCc%3d&risl=&pid=ImgRaw&r=0',
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Text('Bangladesh', style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
            ],
          ),
        ),
      );
    }

    LoadingDialog() {
      showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Row(
            children: [
              CircularProgressIndicator(
                padding: EdgeInsets.all(20),
                color: Colors.green,
              ),
              SizedBox(width: 20),
              Text('Loading...'),
            ],
          ),
        ),
      );
    }

    showSnackbar() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(20),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.purple,
          content: Text('This is Snack bar'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Alert View')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                alertDialog();
              },
              child: Text(
                'Alert Dialogue',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                alertDialogWithIcon();
              },
              child: Text(
                'Alert Dialogue with icon',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                DialogWithOption();
              },
              child: Text(
                'Dialogue with option',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                BottomSheetDialog();
              },
              child: Text(
                'Bottom Sheet',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                diaLogueImage();
              },
              child: Text(
                'Dialog Image',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                LoadingDialog();
              },
              child: Text('Loading', style: TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                showSnackbar();
              },
              child: Text('SnackBar', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
