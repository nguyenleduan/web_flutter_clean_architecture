

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
  }
  int? _value = 0;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(color: Colors.white);
    return Center(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              color: Colors.red,
              child: Row(
                children: [
                   const Image(
                     height: 50,
                    image:  AssetImage('assets/images/logo.png'),
                  ),
                  Container(margin: EdgeInsets.only(left: 20,right: 10),child: Text("Quản lý dự án",style: textStyle,)),
              Container(margin: EdgeInsets.only(left: 10,right: 10),child: Text("Quản lý bộ phận cấp tập trung",style: textStyle,)),
                  Container(margin: EdgeInsets.only(left: 10,right: 10),child: Text("Quản lý nhân sự cấp tập trung",style: textStyle,)),
                  Container(margin: EdgeInsets.only(left: 10,right: 10),child: Text("Cấu hình",style: textStyle,)),
                  Spacer(),
                  Icon(Icons.notifications_none,color: Colors.white,),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 30,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://photos.app.goo.gl/j9hpxw5F3ArwoDWz7"),
                    ),
                  ),
                  Container(margin: EdgeInsets.only(left: 5,right: 10),child: Text("Duan",style: textStyle,)),
                  Container(margin: EdgeInsets.only(left: 5,right: 20),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        customButton: const Icon(
                          Icons.arrow_drop_down,
                          size: 25,
                          color: Colors.white,
                        ),
                        customItemsIndexes: const [3],
                        customItemsHeight: 8,
                        items: [
                          ...MenuItems.firstItems.map(
                                (item) =>
                                DropdownMenuItem<MenuItem>(
                                  value: item,
                                  child: MenuItems.buildItem(item),
                                ),
                          ),
                          const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
                          ...MenuItems.secondItems.map(
                                (item) =>
                                DropdownMenuItem<MenuItem>(
                                  value: item,
                                  child: MenuItems.buildItem(item),
                                ),
                          ),
                        ],
                        onChanged: (value) {
                          MenuItems.onChanged(context, value as MenuItem);
                        },
                        itemHeight: 48,
                        itemPadding: const EdgeInsets.only(left: 16, right: 16),
                        dropdownWidth: 160,
                        dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.redAccent,
                        ),
                        dropdownElevation: 8,
                        offset: const Offset(0, 8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          color: Color(0xffF5F5F5),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 5),
                      child: Text(
                      "Quản lý dự án tập trung",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                  ),
                    ),
                    Text(
                    "/",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                      child: Text(
                      "Hoang Thu Hiền",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                  ),
                    ),
                ],
              ),
              _profile()
            ]),
          ),
        ),
      ),
    );
  }
  Widget _profile(){
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                height: 30,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://photos.app.goo.gl/j9hpxw5F3ArwoDWz7"),
                ),
              ),
              Column(
                children: [
                  Text("Hoàng Thu Hiền",style: TextStyle(fontSize: 16),),
                  Text("Hoàng Thu Hiền"),
                  Row(
                    children: [
                      Text("Hoàng Thu Hiền"),

                      Text("Hoàng Thu Hiền"),

                      Container(margin: EdgeInsets.only(left: 5,right: 20),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            customButton: const Icon(
                              Icons.arrow_drop_down,
                              size: 25,
                              color: Colors.white,
                            ),
                            customItemsIndexes: const [3],
                            customItemsHeight: 8,
                            items: [
                              ...MenuItemsStatus.firstItems.map(
                                    (item) =>
                                    DropdownMenuItem<String>(
                                      value: item,
                                      child: MenuItemsStatus.buildItem(item),
                                    ),
                              ),
                              const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
                              ...MenuItemsStatus.secondItems.map(
                                    (item) =>
                                    DropdownMenuItem<String>(
                                      value: item,
                                      child: MenuItemsStatus.buildItem(item),
                                    ),
                              ),
                            ],
                            onChanged: (value) {
                              MenuItems.onChanged(context, value as MenuItem);
                            },
                            itemHeight: 48,
                            itemPadding: const EdgeInsets.only(left: 16, right: 16),
                            dropdownWidth: 160,
                            dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.redAccent,
                            ),
                            dropdownElevation: 8,
                            offset: const Offset(0, 8),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [home,];
  static const List<MenuItem> secondItems = [logout];

  static const home = MenuItem(text: 'Thông tin', icon: Icons.account_circle_sharp);
  static const logout = MenuItem(text: 'Log Out', icon: Icons.logout);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(
            item.icon,
            color: Colors.white,
            size: 22
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:
      //Do something
        break;
      case MenuItems.logout:
      //Do something
        break;
    }
  }
}
class MenuItemsStatus {
  static const List<String> firstItems = [home,pass];
  static const List<String> secondItems = [delete];

  static const home =   'Dừng hoạt động' ;
  static const pass =  'Đặt lại mật khẩu' ;
  static const delete =  'Xóa nhân sự' ;

  static Widget buildItem(String item) {
    return Row(
      children: [
        Text(
          item,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:
      //Do something
        break;
      case MenuItems.logout:
      //Do something
        break;
    }
  }
}