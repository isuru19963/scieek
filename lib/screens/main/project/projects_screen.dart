import 'package:flutter/material.dart';
import '../../../theme/app_theme.dart';
import 'create_project_screen.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  Widget _statusChip(String label) {
    Color bg;
    switch (label) {
      case 'Approved':
        bg = const Color(0xFFDFF7E6); // light green
        break;
      case 'In Draft':
        bg = const Color(0xFFDADADA); // grey
        break;
      case 'Pending':
        bg = const Color(0xFFFFE6D6); // light orange
        break;
      case 'Not Approved':
        bg = const Color(0xFFFFE1E1); // light red
        break;
      default:
        bg = AppColors.surface;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: AppColors.textPrimary,
          fontWeight: AppFonts.semiBold,
        ),
      ),
    );
  }

  Widget _projectCard(
    BuildContext context, {
    required String title,
    required String status,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Project Title',
                    style: TextStyle(
                      fontFamily: AppFonts.primary,
                      fontSize: AppFonts.size14,
                      height: 16 / 14,
                      letterSpacing: 0.0,
                      color: AppColors.primary,
                      fontWeight: AppFonts.medium,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: AppFonts.size18,
                      fontWeight: AppFonts.bold,
                      color: AppColors.textPrimary,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      _statusChip(status),
                      // const Spacer(),
                      const SizedBox(width: 12),
                      Text(
                        '11 Jan 2025',
                        style: TextStyle(
                          fontSize: AppFonts.size14,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // const SizedBox(width: 12),
            // _statusChip(status),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              const SizedBox(height: 8),
              const Text(
                'My',
                style: TextStyle(
                  color: AppColors.textLight,
                  fontSize: AppFonts.size14,
                ),
              ),
              const SizedBox(height: 2),
              const Text(
                'Projects',
                style: TextStyle(
                  color: AppColors.textLight,
                  fontSize: AppFonts.size28,
                  fontWeight: AppFonts.bold,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Search Projects',
                    hintStyle: TextStyle(
                      color: AppColors.textHint,
                      fontSize: AppFonts.size16,
                    ),
                    prefixIcon: Icon(Icons.search, color: AppColors.textHint),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              const SizedBox(height: 16),
              _projectCard(
                context,
                title: 'What Happens To Marshmallows In Different Liquids',
                status: 'Approved',
              ),
              _projectCard(
                context,
                title: 'What Happens To Marshmallows In Different Liquids',
                status: 'In Draft',
              ),
              _projectCard(
                context,
                title: 'What Happens To Marshmallows In Different Liquids',
                status: 'Pending',
              ),
              _projectCard(
                context,
                title: 'What Happens To Marshmallows In Different Liquids',
                status: 'Not Approved',
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // navigate to create project
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateProjectScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Create Project'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    textStyle: const TextStyle(
                      fontSize: AppFonts.size16,
                      fontWeight: AppFonts.semiBold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ],
    );
  }
}
