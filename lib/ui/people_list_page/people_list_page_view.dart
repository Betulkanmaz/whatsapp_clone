import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/chat_page/chat_page_view.dart';
import 'package:whatsapp_clone/ui/profile_page/profile_page_view.dart';

import '../../data/utilities/app_colors.dart';

class PeopleListPageView extends StatefulWidget {
  const PeopleListPageView({super.key});

  @override
  State<PeopleListPageView> createState() => _PeopleListPageViewState();
}

class _PeopleListPageViewState extends State<PeopleListPageView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // İki sekme var
      child: Scaffold(
        backgroundColor: AppColors.white,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.darkGreen,
          onPressed: () {
            //TODO: buraya basildiginda ne yapilabilir bilemedim, gorsel olarak
            // tasarıma benzesin diye koydum
          },
          child: const Icon(
            Icons.chat,
            color: AppColors.white,
          ), // FAB içindeki ikon
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: AppColors.darkGreen,
          title: const Text(
            'WhatsApp Clone',
            style: TextStyle(
              fontSize: 20,
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: AppColors.white),
              onPressed: () {},
            ),
            PopupMenuButton<String>(
              offset: const Offset(0, 40),
              color: AppColors.white,
              icon: const Icon(Icons.more_vert, color: AppColors.white),
              onSelected: (String value) {
                if (value == 'settings') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePageView(),
                    ),
                  );
                }
                // Diğer seçenekler için ek işlemler ekleyebilirsiniz
              },
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem<String>(
                    value: 'yeni_grup',
                    child: Text('Yeni grup'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'yeni_toplu_mesaj',
                    child: Text('Yeni toplu mesaj'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'bağlı_cihazlar',
                    child: Text('Bağlı cihazlar'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'yıldızlı_mesajlar',
                    child: Text('Yıldızlı mesajlar'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'settings',
                    child: Text('Ayarlar'),
                  ),
                ];
              },
            ),
          ],
          bottom: const TabBar(
            indicatorColor: AppColors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            labelColor: AppColors.white,
            unselectedLabelColor: AppColors.lightWhite,
            dividerHeight: 0,
            tabs: [
              Tab(text: 'Peoples'),
              Tab(text: 'Chats'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PeoplesTab(),
            ChatsTab(),
          ],
        ),
      ),
    );
  }
}

class PeoplesTab extends StatelessWidget {
  const PeoplesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Örnek veri
    return Center(
      child: Text("Kişi listesi"),
    );
  }
}

class ChatsTab extends StatelessWidget {
  const ChatsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Chat Kısmı"),
    );
  }
}
