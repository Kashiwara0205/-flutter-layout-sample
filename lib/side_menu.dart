import 'package:flutter/material.dart';
import 'center_sample.dart';
import 'grid_view_sample.dart';
import 'align_sample.dart';
import 'aspcet_sample.dart';
import 'container_sample.dart';
import 'padding_sample.dart';
import 'sized_box_sample.dart';

enum Page {
  centerSample,
  gridViewSample,
  alignSample,
  aspectSample,
  containerSample,
  paddingSample,
  sizedBoxSample
}

final List<Widget> pageList = [
  createCenterSample(),
  createGridViewSample(),
  createAlignSample(),
  createAspectSample(),
  createContainerSample(),
  createPaddingSample(),
  createSizeBoxDemoSample()
];

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<SideMenu> {
  var  page = Page.alignSample.index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Layout Demo'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                child: Text(
                  'Layout Menu',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: const Text('Align'),
                onTap: () {
                  setState(() => page = Page.alignSample.index);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('AspectRatio'),
                onTap: () {
                  setState(() => page = Page.aspectSample.index);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Center'),
                onTap: () {
                  setState(() => page = Page.centerSample.index);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Container'),
                onTap: () {
                  setState(() => page = Page.containerSample.index);
                  Navigator.pop(context);
                },
              ),

              ListTile(
                title: const Text('Padding'),
                onTap: () {
                  setState(() => page = Page.paddingSample.index);
                  Navigator.pop(context);
                },
              ),

              ListTile(
                title: const Text('SizedBox'),
                onTap: () {
                  setState(() => page = Page.sizedBoxSample.index);
                  Navigator.pop(context);
                },
              ),

              ListTile(
                title: const Text('Transform'),
                onTap: () {
                  setState(() => page = 0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Column'),
                onTap: () {
                  setState(() => page = 0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('GridView'),
                onTap: () {
                  setState(() => page = Page.gridViewSample.index);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('ListView'),
                onTap: () {
                  setState(() => page = 0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Row'),
                onTap: () {
                  setState(() => page = 0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Stack'),
                onTap: () {
                  setState(() => page = 0);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: pageList[page]);
  }
}

