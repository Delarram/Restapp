import 'package:flutter/cupertino.dart';

import '../../widget/bg_clippath.dart';

class LoginScreenClip extends StatelessWidget {
  const LoginScreenClip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BgClipPath(),
    );
  }
}


