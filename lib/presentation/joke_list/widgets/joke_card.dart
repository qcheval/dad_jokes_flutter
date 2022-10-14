import 'package:dad_jokes_flutter/application/core/model/joke_view_model.dart';
import 'package:dad_jokes_flutter/presentation/string_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:share_plus/share_plus.dart';

class JokeCard extends StatelessWidget {
  final JokeViewModel joke;

  const JokeCard({super.key, required this.joke});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 3,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                joke.text,
                style: GoogleFonts.lato(fontSize: 18.sp),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                child: Divider(thickness: 1)),
            Padding(
                padding: EdgeInsets.all(16),
                child: TextButton(
                  onPressed: () async {
                    await Share.share("${StringProvider.shareUrl}${joke.id}");
                  },
                  child: Row(
                    children: [
                      Icon(Icons.share),
                      SizedBox(width: 16),
                      Text(StringProvider.share)
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
