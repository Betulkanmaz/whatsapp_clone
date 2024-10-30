import 'package:flutter/material.dart';

import '../../data/utilities/app_colors.dart';

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({super.key});

  @override
  State<ProfilePageView> createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: AppColors.white,
          ),
        ),
        title: const Text(
          'Profil',
          style: TextStyle(
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.darkGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 54,
                      backgroundImage:
                          AssetImage("assets/avatar.png"), // Kullanıcı resmi
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          color: AppColors.whatsappGreen,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.edit,
                            color: AppColors.white,
                            size: 18,
                          ),
                          onPressed: () {
                            // Profil resmi düzenleme işlemi
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8.0),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kullanıcı Adı',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Durum', // Kullanıcı telefon numarası
                      style: TextStyle(fontSize: 14, color: AppColors.darkGrey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildListItem(
                      Icons.vpn_key_outlined, 'Hesap', 'Güvenlik bildirimleri'),
                  _buildListItem(
                      Icons.lock_outline, 'Gizlilik', 'Kişileri engelleme'),
                  _buildListItem(Icons.face, 'Avatar', 'Oluşturma, düzenleme'),
                  _buildListItem(Icons.library_books_outlined, 'Listeler',
                      'Kişi ve grupları yönetin'),
                  _buildListItem(Icons.chat_outlined, 'Sohbetler',
                      'Tema, duvar kağıtları'),
                  _buildListItem(Icons.notifications_none, 'Bildirimler',
                      'Mesaj, grup ve arama sesleri'),
                  _buildListItem(
                      Icons.language, 'Uygulama dili', 'Türkçe(cihaz dili)'),
                  _buildListItem(Icons.help_outline, 'Yardım',
                      'Yardım merkezi, bize ulaşın'),
                  _buildListItem(Icons.system_security_update_good_outlined,
                      'Uygulama güncellemeleri', ''),
                  // İstediğiniz kadar ekleme yapabilirsiniz
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () {
          //TODO: tıklanma özelligi koydum ama kalsın boyle
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: AppColors.lightBlack,
              size: 24,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16)),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.lightBlack,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
