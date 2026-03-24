import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const _transactions = [
    {
      'name': 'Puma Store',
      'method': 'Bank Account',
      'date': 'Fri, 05 April 2022',
      'amount': '+\$952',
      'color': AppColors.income,
      'icon': Icons.shopping_bag,
      'logo': 'P',
    },
    {
      'name': 'Nike Super Store',
      'method': 'Credit Card',
      'date': 'Fri, 05 April 2022',
      'amount': '+\$475',
      'color': AppColors.income,
      'icon': Icons.shopping_cart,
      'logo': 'N',
    },
    {
      'name': 'Spotify Premium',
      'method': 'Credit Card',
      'date': 'Thu, 04 April 2022',
      'amount': '-\$12',
      'color': AppColors.expense,
      'icon': Icons.music_note,
      'logo': 'S',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.textPrimary,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.primary.withOpacity(0.2),
                child: const Text('H', style: TextStyle(color: Colors.white)),
              ),
              const Text('Home', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 8, offset: const Offset(0, 2)),
                  ],
                ),
                child: IconButton(
                  icon: const Icon(Icons.notifications_none, color: Colors.black87, size: 20),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: const CircularNotchedRectangle(),
        elevation: 8,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.home, color: AppColors.primary),
              Icon(Icons.credit_card, color: AppColors.textSecondary),
              SizedBox(width: 40),
              Icon(Icons.pie_chart_outline, color: AppColors.textSecondary),
              Icon(Icons.settings_outlined, color: AppColors.textSecondary),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 190,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                gradient: const LinearGradient(
                  colors: [AppColors.primary, AppColors.secondary],
                ),
                boxShadow: [
                  BoxShadow(color: AppColors.primary.withOpacity(0.25), blurRadius: 16, offset: const Offset(0, 8)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Total Balance', style: TextStyle(color: Colors.white70, fontSize: 14)),
                  const SizedBox(height: 8),
                  const Text('\$59,765.00', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text('2644', style: TextStyle(color: Colors.white70, letterSpacing: 1.5)),
                          SizedBox(width: 8),
                          Text('7545', style: TextStyle(color: Colors.white70, letterSpacing: 1.5)),
                          SizedBox(width: 8),
                          Text('3867', style: TextStyle(color: Colors.white70, letterSpacing: 1.5)),
                          SizedBox(width: 8),
                          Text('1965', style: TextStyle(color: Colors.white70, letterSpacing: 1.5)),
                        ],
                      ),
                      Container(
                        width: 40,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.credit_card, size: 18, color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Analytics', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.textPrimary)),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 8, offset: const Offset(0, 4)),
                    ],
                  ),
                  child: Row(
                    children: const [
                      Text('Year - 2022', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                      SizedBox(width: 4),
                      Icon(Icons.keyboard_arrow_down, size: 18),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 12, offset: const Offset(0, 4))],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Jan', style: TextStyle(color: AppColors.textSecondary)),
                      Text('Feb', style: TextStyle(color: AppColors.textSecondary)),
                      Text('Mar', style: TextStyle(color: AppColors.textSecondary)),
                      Text('Apr', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold)),
                      Text('May', style: TextStyle(color: AppColors.textSecondary)),
                      Text('Jun', style: TextStyle(color: AppColors.textSecondary)),
                      Text('Jul', style: TextStyle(color: AppColors.textSecondary)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildBar(30, '1,494'),
                      _buildBar(40, '1,664'),
                      _buildBar(28, '1,544'),
                      _buildBar(80, '2,972', active: true),
                      _buildBar(48, '2,484'),
                      _buildBar(66, '2,384'),
                      _buildBar(36, '1,894'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Transactions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.textPrimary)),
                Text('View All', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.primary)),
              ],
            ),
            const SizedBox(height: 12),
            ..._transactions.map((item) => _TransactionItem(data: item)).toList(),
            const SizedBox(height: 90),
          ],
        ),
      ),
    );
  }

  Widget _buildBar(double height, String label, {bool active = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 18,
          height: height,
          decoration: BoxDecoration(
            color: active ? AppColors.primary : AppColors.primary.withOpacity(0.2),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 10, color: AppColors.textSecondary)),
      ],
    );
  }
}

class _TransactionItem extends StatelessWidget {
  final Map<String, Object> data;

  const _TransactionItem({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, offset: const Offset(0, 3))],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: AppColors.primary.withOpacity(0.16),
            child: Text(data['logo'] as String, style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data['name'] as String, style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.textPrimary)),
                const SizedBox(height: 2),
                Text(data['method'] as String, style: const TextStyle(color: AppColors.textSecondary, fontSize: 12)),
                const SizedBox(height: 4),
                Text(data['date'] as String, style: const TextStyle(color: AppColors.textSecondary, fontSize: 12)),
              ],
            ),
          ),
          Text(data['amount'] as String,
              style: TextStyle(
                color: data['color'] as Color,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              )),
        ],
      ),
    );
  }
}
