import 'package:flutter/material.dart';
import '../../../theme/app_theme.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(
      6,
      (i) => WatchItem(
        image: 'assets/images/home1.png',
        title: _sampleTitle(i),
        people: (i + 1) * 10 + 5,
        trophies: (i + 1) * 5,
        time: (i + 1) * 12,
      ),
    );

    return SafeArea(
      child: Column(
        children: [
          // Header with gradient and search
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primary, AppColors.primaryLight],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'My',
                        style: TextStyle(
                          color: AppColors.textLight,
                          fontSize: AppFonts.size14,
                        ),
                      ),
                    ),
                    // small icons on the right
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_outlined,
                        color: AppColors.textLight,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu, color: AppColors.textLight),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                const Text(
                  'Watch List',
                  style: TextStyle(
                    color: AppColors.textLight,
                    fontSize: AppFonts.size24,
                    fontWeight: AppFonts.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: 'Search Projects',
                            hintStyle: TextStyle(color: AppColors.textHint),
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColors.textHint,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.tune, color: AppColors.primary),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // List
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: items.length,
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemBuilder: (context, index) =>
                  _WatchlistCard(item: items[index]),
            ),
          ),
        ],
      ),
    );
  }
}

String _sampleTitle(int i) {
  const titles = [
    'The Effects of Sodium Chloride on the...',
    'X‑inactive Marks The Spot For Tortoiseshell Cats',
    'The Effects of Artificial Light on Marine Life',
    'Cosmic Fields (Advanced Lunar Food Production)',
    'Optimal Watering Patterns for Sunflower....',
    'A Study in Minimal Plant Nutrition',
  ];
  return titles[i % titles.length];
}

class WatchItem {
  final String image;
  final String title;
  final int people;
  final int trophies;
  final int time;

  WatchItem({
    required this.image,
    required this.title,
    required this.people,
    required this.trophies,
    required this.time,
  });
}

class _WatchlistCard extends StatelessWidget {
  final WatchItem item;
  const _WatchlistCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Image
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(12),
            ),
            child: Image.asset(
              item.image,
              width: 96,
              height: 96,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 96,
                height: 96,
                color: Colors.grey[300],
                child: const Icon(Icons.image, size: 40, color: Colors.grey),
              ),
            ),
          ),
          // Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: AppFonts.size16,
                      fontWeight: AppFonts.bold,
                      color: AppColors.textPrimary,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      _smallStat(Icons.people_outline, item.people.toString()),
                      const SizedBox(width: 12),
                      _smallStat(
                        Icons.emoji_events_outlined,
                        item.trophies.toString(),
                      ),
                      const SizedBox(width: 12),
                      _smallStat(Icons.timer, item.time.toString()),
                      const Spacer(),
                      // Remove button
                      _removeButton(context),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _smallStat(IconData icon, String value) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.primary),
        const SizedBox(width: 6),
        Text(
          value,
          style: const TextStyle(
            fontSize: AppFonts.size14,
            color: AppColors.primary,
            fontWeight: AppFonts.medium,
          ),
        ),
      ],
    );
  }

  Widget _removeButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Removed from watchlist')));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.secondaryLight,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: const Text(
          'Remove',
          style: TextStyle(
            color: AppColors.textLight,
            fontWeight: AppFonts.semiBold,
          ),
        ),
      ),
    );
  }
}
