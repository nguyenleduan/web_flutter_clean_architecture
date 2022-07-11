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
                    image: AssetImage('assets/images/logo.png'),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 20, right: 10),
                      child: Text(
                        "Quản lý dự án",
                        style: textStyle,
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Quản lý bộ phận cấp tập trung",
                        style: textStyle,
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Quản lý nhân sự cấp tập trung",
                        style: textStyle,
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Cấu hình",
                        style: textStyle,
                      )),
                  Spacer(),
                  Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 30,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://photos.app.goo.gl/j9hpxw5F3ArwoDWz7"),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 5, right: 10),
                      child: Text(
                        "Duan",
                        style: textStyle,
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 20),
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
                          const DropdownMenuItem<Divider>(
                              enabled: false, child: Divider()),
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
                        dropdownPadding:
                        const EdgeInsets.symmetric(vertical: 6),
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
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 5),
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
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 3, child: _profile()),
                  Expanded(flex: 4, child: _history()),
                  Expanded(flex: 3, child: _detailHistory()),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
  Widget _detailHistory(){
    return Container(
        height: MediaQuery
            .of(context)
            .size
            .height*0.8,
      margin: EdgeInsets.only(left: 10),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Container(
            child: Text("Thông tin công việc"),
          ),
          Row(
            children: [
              Expanded(flex:5,child: Text("Bộ Phận",style: TextStyle(fontWeight: FontWeight.w600),)),
              Expanded(flex:5,child: Text("Quyền hạn",style: TextStyle(fontWeight: FontWeight.w600),)),
            ],
          ),
          ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Expanded(flex:5,child: Text("Bộ Phận", )),
                        Expanded(flex:5,child: Text("Quyền hạn",)),
                      ],
                    ),
                    Container(height: 1,color: Colors.black12,)
                  ],
                );
              }
          )

        ],
      )

    );
  }
  Widget _history() {
    return Container(
      margin: EdgeInsets.only(top: 20,left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text("Lịch sử hoạt động", style: TextStyle(fontSize: 20),),
          ),
          Container(height: 1, color: Colors.black54,),
          Container(
            child: Row(
              children: [
                Text("Tìm kiếm theo hoạt động"),
                Container(
                  width: 200,
                    height: 50,
                  child: TextField(
                    // controller: emailController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Color(0xfff3f3f4),
                          filled: true)),
                ),
                Container(
                  child: Text("Thời gian"),
                ),
                // DOW
              ],
            ),
          ),
          Container(
            height: MediaQuery
                .of(context)
                .size
        .height*0.8,
            child:  ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(top: 10),
                    child:  Column(
                      children: [
                        Container(
                          child:  Row(
                            children: [
                              Icon(Icons.calendar_today),
                              Container(child: Text('Hôm nay, 16/03/2022'),)
                            ],
                          ),
                        ),
                        Container(
                          child: ListView.builder(
                              padding: const EdgeInsets.only(top: 10),
                              itemCount: 2,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return
                                  Container(
                                    margin: EdgeInsets.only(top: 5,bottom: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("$index 2:23:11 16/03/2022",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.black54),),
                                        Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color:   Colors.black12,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Text("Chỉnh sửa thông tin dự án.",maxLines: 20,),
                                        )
                                      ],
                                    ),
                                  );
                              }
                          ),
                        )
                      ],
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }

  Widget _profile() {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height,
      color: Colors.black12,
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 10),
                height: 50,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr"),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hoàng Thu Hiền",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text("Kế toán trưởng"),
                  Row(
                    children: [
                      Text(
                        "Đang hoạt động",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text("Tuỳ chọn"),
                      Container(
                        margin: EdgeInsets.only(left: 5, right: 20),
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
                              const DropdownMenuItem<Divider>(
                                  enabled: false, child: Divider()),
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
                            itemPadding:
                            const EdgeInsets.only(left: 16, right: 16),
                            dropdownWidth: 160,
                            dropdownPadding:
                            const EdgeInsets.symmetric(vertical: 6),
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
          ),
          Container(
            height: 1,
            color: Colors.black54,
          ),
          Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Thông tin nhân viên",
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Text(
                      "Mã nhân viên",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text("MAS123"),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Text(
                      "Tên đăng nhập",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text("nguyenleduan "),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Text(
                      "Email",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text("nguyenleduan.index@gmail.com"),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Text(
                      "Số điện thoại",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text("0966441600"),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Text(
                      "Ngày sinh",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text("12/12/2001"),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Text(
                      "Giới tính",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text("Nam"),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Text(
                      "Địa chỉ",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text("Quận 7 - HCM - Việt Nam"),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Text(
                      "CMND/CCCD/Hộ chiếu",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text("0761284124"),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Text(
                      "Nơi cấp",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text("Long An"),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Text(
                      "Ghi chú",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text("Flutter year 2992"),
                ],
              )),
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
  static const List<MenuItem> firstItems = [
    home,
  ];
  static const List<MenuItem> secondItems = [logout];

  static const home =
  MenuItem(text: 'Thông tin', icon: Icons.account_circle_sharp);
  static const logout = MenuItem(text: 'Log Out', icon: Icons.logout);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.white, size: 22),
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
  static const List<String> firstItems = [home, pass];
  static const List<String> secondItems = [delete];

  static const home = 'Dừng hoạt động';

  static const pass = 'Đặt lại mật khẩu';

  static const delete = 'Xóa nhân sự';

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
