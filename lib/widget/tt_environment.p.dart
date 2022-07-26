import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sport_club/utils/tt_process.p.dart';

class Environment extends StatefulWidget {
  final Widget child;
  final List<SingleChildWidget> providers;
  final Future Function()? initServices;
  final Widget? loadingChild;
  final Widget? backgroundChild;

  const Environment({
    Key? key,
    required this.child,
    this.providers = const [],
    this.loadingChild,
    this.initServices,
    this.backgroundChild,
  }) : super(key: key);

  @override
  _EnvironmentState createState() => _EnvironmentState();
}

class _EnvironmentState extends State<Environment> {
  bool isInited = false;

  @override
  void initState() {
    super.initState();
    initServices();
  }

  void initServices() async {
    if (widget.initServices != null) {
      await widget.initServices?.call();
    }
    postDelay(200, () {
      if (mounted) {
        setState(() {
          isInited = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        children: [
          if (widget.backgroundChild != null) Positioned.fill(child: widget.backgroundChild!),
          if (widget.loadingChild != null)
            Center(
              child: widget.loadingChild,
            ),
          if (isInited)
            if (widget.providers.isNotEmpty)
              MultiProvider(
                providers: widget.providers,
                child: widget.child,
              )
            else
              widget.child
        ],
      ),
    );
  }
}
