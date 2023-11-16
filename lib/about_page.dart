import 'package:who_goes_first/custom_icons_icons.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  PackageInfo? packageInfo;

  void setup() async {
    packageInfo = await PackageInfo.fromPlatform();
    setState(() {});
  }

  @override
  void initState() {
    setup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 4,
        shadowColor: Theme.of(context).colorScheme.shadow,
        title: const Text("About"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icon/Icon-512.png',
                        height: 32,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Opacity(
                            opacity: 0.9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Who Goes First',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Text(
                                  '© 2023 Jefferey Neuffer',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                  child: Row(
                    children: [
                      const Opacity(
                        opacity: 0.5,
                        child: Icon(
                          Icons.info_outline,
                          size: 32,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Opacity(
                            opacity: 0.9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'App Version',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Text(
                                  '${packageInfo?.version ?? '-.-.-'} (${packageInfo?.buildNumber ?? ''})',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => launchUrl(Uri.parse('https://j7126.dev/projects/who-goes-first')),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    child: Row(
                      children: [
                        const Opacity(
                          opacity: 0.5,
                          child: Icon(
                            Icons.home_outlined,
                            size: 32,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Opacity(
                              opacity: 0.9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Home Page',
                                    style: Theme.of(context).textTheme.titleLarge,
                                  ),
                                  Text(
                                    'https://j7126.dev/projects/who-goes-first',
                                    style: Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => launchUrl(Uri.parse('https://github.com/j7126/who_goes_first/issues')),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    child: Row(
                      children: [
                        const Opacity(
                          opacity: 0.5,
                          child: Icon(
                            Icons.bug_report,
                            size: 32,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Opacity(
                              opacity: 0.9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Report an issue',
                                    style: Theme.of(context).textTheme.titleLarge,
                                  ),
                                  Text(
                                    'https://github.com/j7126/who_goes_first/issues',
                                    style: Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => launchUrl(Uri.parse('https://github.com/j7126/who_goes_first')),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    child: Row(
                      children: [
                        const Opacity(
                          opacity: 0.5,
                          child: Icon(
                            CustomIcons.github_circled,
                            size: 32,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Opacity(
                              opacity: 0.9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'View on GitHub',
                                    style: Theme.of(context).textTheme.titleLarge,
                                  ),
                                  Text(
                                    'https://github.com/j7126/who_goes_first',
                                    style: Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => launchUrl(Uri.parse('https://github.com/j7126/who_goes_first/blob/main/CREDITS.md')),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Opacity(
                          opacity: 0.5,
                          child: Icon(
                            Icons.edit_outlined,
                            size: 32,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Opacity(
                              opacity: 0.9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Credits',
                                    style: Theme.of(context).textTheme.titleLarge,
                                  ),
                                  Text(
                                    'https://github.com/j7126/who_goes_first/blob/main/CREDITS.md',
                                    style: Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
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
