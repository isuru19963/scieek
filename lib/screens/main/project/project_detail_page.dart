import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class ProjectDetailPage extends StatefulWidget {
  const ProjectDetailPage({super.key});

  @override
  State<ProjectDetailPage> createState() => _ProjectDetailPageState();
}

class _ProjectDetailPageState extends State<ProjectDetailPage> {
  int _activeSection = 0;

  static const String _title =
      'Rust Busters: How Different Liquids Affect Iron Rusting';
  static const List<_SectionData> _sections = [
    _SectionData(
      image: 'assets/images/home1.png',
      label: 'Overview',
      taskTitle: 'Overview',
      startDate: '01.07.2025',
      endDate: '13.07.2025',
      assignee: 'Sofia Mathew',
    ),
    _SectionData(
      image: 'assets/images/plan.png',
      label: 'Plan',
      taskTitle: 'Plan Phase',
      startDate: '01.07.2025',
      endDate: '05.07.2025',
      assignee: 'Ajith Kaythottil',
    ),
    _SectionData(
      image: 'assets/images/perform.png',
      label: 'Perform',
      taskTitle: 'Perform Phase',
      startDate: '06.07.2025',
      endDate: '10.07.2025',
      assignee: 'Emma Wilson',
    ),
    _SectionData(
      image: 'assets/images/tracking.png',
      label: 'Tracking',
      taskTitle: 'Tracking Phase',
      startDate: '11.07.2025',
      endDate: '13.07.2025',
      assignee: 'James Smith',
    ),
    _SectionData(
      image: 'assets/images/conclusion.png',
      label: 'Conclusion',
      taskTitle: 'Conclusion Phase',
      startDate: '11.07.2025',
      endDate: '13.07.2025',
      assignee: 'James Smith',
    ),
  ];
  static const int _views = 3568;
  static const int _likes = 145;
  static const String _projectCategory = 'Experiment';
  static const String _category = 'Engineering & Computing';
  static const String _schoolName = 'Rajagiri';
  static const String _educationLevel = 'High School';
  static const String _description =
      'Investigate how various common household liquids (like water, saltwater, vinegar, lemon juice, and oil) influence the rate of rust formation on iron nails. The project will help demonstrate the chemical process of oxidation and how environmental factors impact corrosion.';
  static const List<String> _awards = [
    'Gold Merit Award',
    'Hillfield Strathallan College Entrance Scholarship Award',
    'ISEF Trip Award',
    'Canada-Wide Science Fair Trip Award',
    'Professional Engineers of Ontario',
    'Oakville Chapter Engineering Award - Intermedia',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopBar(context),
              const SizedBox(height: 12),
              Text(
                _sections[_activeSection].label,
                style: const TextStyle(
                  fontSize: AppFonts.size20,
                  fontWeight: AppFonts.bold,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 12),
              _buildHeroMedia(),
              const SizedBox(height: 12),
              _buildGallery(),
              const SizedBox(height: 16),
              if (_activeSection == 1) _buildTaskCard(),
              if (_activeSection == 1) const SizedBox(height: 20),
              if (_activeSection == 0) ...[
                _buildTitleSection(),
                const SizedBox(height: 20),
                _buildLabeledText('Project Category', _projectCategory),
                const SizedBox(height: 12),
                _buildLabeledText('Description', _description),
                const SizedBox(height: 16),
                _buildInfoLine('Category', _category),
                const SizedBox(height: 12),
                _buildInfoLine('School Name', _schoolName),
                const SizedBox(height: 12),
                _buildInfoLine('Level of Education', _educationLevel),
                const SizedBox(height: 16),
                _buildAwards(),
              ],
              if (_activeSection == 2) ...[
                _buildTopicSection(),
                const SizedBox(height: 24),
                _buildSummarySection(),
              ],
              if (_activeSection == 3) ...[_buildDataTableSection()],
              if (_activeSection == 4) ...[
                _buildAnalysisSection(),
                const SizedBox(height: 24),
                _buildResultsSection(),
                const SizedBox(height: 24),
                _buildBooksSection(),
                const SizedBox(height: 24),
                _buildMaterialsSection(),
              ],
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnalysisSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.bar_chart, color: AppColors.primary, size: 24),
            const SizedBox(width: 8),
            const Text(
              'Analysis',
              style: TextStyle(
                fontSize: AppFonts.size18,
                fontWeight: AppFonts.bold,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Summary',
                style: TextStyle(
                  fontSize: AppFonts.size14,
                  fontWeight: AppFonts.semiBold,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining',
                style: TextStyle(
                  fontSize: AppFonts.size14,
                  fontWeight: AppFonts.regular,
                  color: AppColors.textPrimary,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/chart.png',
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: double.infinity,
                      height: 180,
                      color: Colors.grey[300],
                      child: const Icon(Icons.image, color: Colors.grey),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildResultsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Results',
          style: TextStyle(
            fontSize: AppFonts.size18,
            fontWeight: AppFonts.bold,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            // color: AppColors.surface,
            borderRadius: BorderRadius.circular(14),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.06),
            //     blurRadius: 8,
            //     offset: const Offset(0, 2),
            //   ),
            // ],
          ),
          padding: const EdgeInsets.all(16),
          child: const Text(
            'Investigate how various common household liquids (like water, saltwater, vinegar, lemon juice, and oil) influence the rate of rust formation on iron nails. The project will help demonstrate the chemical process of oxidation and how environmental factors impact corrosion.',
            style: TextStyle(
              fontSize: AppFonts.size14,
              fontWeight: AppFonts.regular,
              color: AppColors.textPrimary,
              height: 1.6,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBooksSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.menu_book, color: AppColors.primary, size: 24),
            const SizedBox(width: 8),
            const Text(
              'Books',
              style: TextStyle(
                fontSize: AppFonts.size18,
                fontWeight: AppFonts.bold,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            // color: AppColors.surface,
            borderRadius: BorderRadius.circular(14),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.06),
            //     blurRadius: 8,
            //     offset: const Offset(0, 2),
            //   ),
            // ],
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBookMaterialItem('Sample Book Name 1'),
              const SizedBox(height: 8),
              _buildBookMaterialItem('Sample Book Name 2'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMaterialsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.category, color: AppColors.primary, size: 24),
            const SizedBox(width: 8),
            const Text(
              'Materials',
              style: TextStyle(
                fontSize: AppFonts.size18,
                fontWeight: AppFonts.bold,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            // color: AppColors.surface,
            borderRadius: BorderRadius.circular(14),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.06),
            //     blurRadius: 8,
            //     offset: const Offset(0, 2),
            //   ),
            // ],
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBookMaterialItem('Sample Material Name 1'),
              const SizedBox(height: 8),
              _buildBookMaterialItem('Sample Material Name 2'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBookMaterialItem(String name) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: AppFonts.size14,
        fontWeight: AppFonts.regular,
        color: AppColors.textPrimary,
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.textPrimary,
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border, color: AppColors.primary),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildHeroMedia() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            _sections[_activeSection].image,
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: double.infinity,
                height: 240,
                color: Colors.grey[300],
                child: const Icon(Icons.image, size: 64, color: Colors.grey),
              );
            },
          ),
        ),
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black.withOpacity(0.25)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Center(
            child: Container(
              width: 76,
              height: 76,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.88),
              ),
              child: Container(
                margin: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  size: 42,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        // Positioned(
        //   left: 14,
        //   bottom: 14,
        //   child: Row(
        //     children: const [
        //       _ControlCircle(icon: Icons.skip_previous),
        //       SizedBox(width: 12),
        //       _ControlCircle(icon: Icons.fast_rewind),
        //       SizedBox(width: 12),
        //       _ControlCircle(icon: Icons.play_arrow),
        //       SizedBox(width: 12),
        //       _ControlCircle(icon: Icons.fast_forward),
        //     ],
        //   ),
        // ),
        Positioned(
          right: 14,
          bottom: 14,
          child: _ControlCircle(
            icon: Icons.fullscreen_exit_outlined,
            background: Colors.white,
            iconColor: AppColors.primary,
          ),
        ),
      ],
    );
  }

  Widget _buildGallery() {
    if (_sections.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 118,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _sections.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final section = _sections[index];
          final bool isActive = index == _activeSection;
          return GestureDetector(
            onTap: () {
              setState(() {
                _activeSection = index;
              });
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isActive
                            ? AppColors.primary
                            : Colors.transparent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        section.image,
                        width: 120,
                        height: 86,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 120,
                            height: 86,
                            color: Colors.grey[300],
                            child: const Icon(Icons.image, color: Colors.grey),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      section.label,
                      style: TextStyle(
                        fontSize: AppFonts.size14,
                        fontWeight: isActive
                            ? AppFonts.semiBold
                            : AppFonts.regular,
                        color: isActive
                            ? AppColors.primary
                            : AppColors.textSecondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTaskCard() {
    final section = _sections[_activeSection];
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Task Name',
            style: TextStyle(
              fontSize: AppFonts.size14,
              fontWeight: AppFonts.semiBold,
              color: AppColors.accentLavender,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            _title,
            style: const TextStyle(
              fontSize: AppFonts.size15,
              fontWeight: AppFonts.bold,
              color: AppColors.textPrimary,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              _buildTaskDate('calendar', section.startDate),
              const SizedBox(width: 20),
              _buildTaskDate('calendar', section.endDate),
              const Spacer(),
              _buildTaskPerson(section.assignee),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTaskDate(String icon, String date) {
    return Row(
      children: [
        Icon(Icons.calendar_today, size: 16, color: AppColors.accentLavender),
        const SizedBox(width: 6),
        Text(
          date,
          style: const TextStyle(
            fontSize: AppFonts.size14,
            fontWeight: AppFonts.medium,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildTaskPerson(String name) {
    return Row(
      children: [
        Icon(Icons.person_outline, size: 16, color: AppColors.accentLavender),
        const SizedBox(width: 6),
        Text(
          name,
          style: const TextStyle(
            fontSize: AppFonts.size14,
            fontWeight: AppFonts.medium,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildTopicSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: _buildTopicCard(
                image: 'assets/images/home1.png',
                topic: 'Topic 1',
                heading: 'Heading 1',
                description:
                    'Investigate how various common household liquids (like water, saltwater, vinegar, lemon juice, and oil) influence the rate of rust formation on iron nails. The project will help demonstrate the chemical process of oxidation and how environmental factors impact corrosion.',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildTopicCard(
                image: 'assets/images/perform.png',
                topic: 'Topic 2',
                heading: 'Heading 2',
                description:
                    'Investigate h various common household liquids (like water, saltwater, vinegar, lem juice, and oil) influence the rate of rust formation on iron nails. The project will help demonstrate the chemical process of oxidation and how environmental factors impact corrosion.',
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTopicCard({
    required String image,
    required String topic,
    required String heading,
    required String description,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border, width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 120,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 120,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image, color: Colors.grey),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topic,
                  style: const TextStyle(
                    fontSize: AppFonts.size12,
                    fontWeight: AppFonts.semiBold,
                    color: AppColors.accentLavender,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  heading,
                  style: const TextStyle(
                    fontSize: AppFonts.size14,
                    fontWeight: AppFonts.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Description',
                  style: const TextStyle(
                    fontSize: AppFonts.size12,
                    fontWeight: AppFonts.semiBold,
                    color: AppColors.accentLavender,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: AppFonts.size12,
                    fontWeight: AppFonts.regular,
                    color: AppColors.textPrimary,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummarySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Summary',
          style: TextStyle(
            fontSize: AppFonts.size20,
            fontWeight: AppFonts.bold,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          _description,
          style: const TextStyle(
            fontSize: AppFonts.size14,
            fontWeight: AppFonts.regular,
            color: AppColors.textPrimary,
            height: 1.6,
          ),
        ),
      ],
    );
  }

  Widget _buildDataTableSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDataCard(
          title: 'Mateor Rush',
          subtitle: 'Light Intensity',
          columns: const ['Lumens', 'Intensity', 'Value 3', 'Value 4'],
          rows: const [
            ['2', '2', '2', '2'],
            ['20', '20', '20', '20'],
          ],
          showMoreData: true,
        ),
        const SizedBox(height: 20),
        _buildDataCard(
          title: 'Sample Name',
          subtitle: 'Dependant Variable',
          columns: const ['Lumens', 'Intensity', 'Value 3', 'Value 4', 'Valu'],
          rows: const [
            ['2', '2', '2', '2', '2'],
            ['20', '20', '20', '20', '2'],
            ['20', '20', '20', '20', '2'],
            ['20', '20', '20', '20', '2'],
          ],
          showMoreData: false,
        ),
      ],
    );
  }

  Widget _buildDataCard({
    required String title,
    required String subtitle,
    required List<String> columns,
    required List<List<String>> rows,
    required bool showMoreData,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: AppFonts.size16,
                    fontWeight: AppFonts.bold,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: AppFonts.size14,
                    fontWeight: AppFonts.semiBold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DataTable(
                headingRowColor: MaterialStateProperty.all(
                  AppColors.background,
                ),
                headingTextStyle: const TextStyle(
                  fontSize: AppFonts.size14,
                  fontWeight: AppFonts.semiBold,
                  color: AppColors.primary,
                ),
                dataTextStyle: const TextStyle(
                  fontSize: AppFonts.size14,
                  fontWeight: AppFonts.regular,
                  color: AppColors.textPrimary,
                ),
                columns: [
                  const DataColumn(label: Text('Day')),
                  ...columns.map((col) => DataColumn(label: Text(col))),
                ].toList(),
                rows: [
                  for (int i = 0; i < rows.length; i++)
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            i == 0 ? 'Day 1' : 'Day ${i + 1}',
                            style: const TextStyle(
                              fontWeight: AppFonts.semiBold,
                            ),
                          ),
                        ),
                        for (String value in rows[i]) DataCell(Text(value)),
                      ],
                    ),
                ],
              ),
            ),
          ),
          if (showMoreData)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'More data →',
                  style: const TextStyle(
                    fontSize: AppFonts.size14,
                    fontWeight: AppFonts.semiBold,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Project Title',
          style: TextStyle(
            fontSize: AppFonts.size14,
            fontWeight: AppFonts.semiBold,
            color: AppColors.accentLavender,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          _title,
          style: const TextStyle(
            fontSize: AppFonts.size20,
            fontWeight: AppFonts.bold,
            color: AppColors.primary,
            height: 1.3,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            _buildStat(Icons.remove_red_eye_outlined, '$_views Views'),
            const Spacer(),
            _buildStat(
              Icons.thumb_up_alt_outlined,
              _likes.toString(),
              color: AppColors.primary,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStat(IconData icon, String value, {Color? color}) {
    return Row(
      children: [
        Icon(icon, size: 20, color: color ?? AppColors.textSecondary),
        const SizedBox(width: 6),
        Text(
          value,
          style: TextStyle(
            fontSize: AppFonts.size14,
            fontWeight: AppFonts.medium,
            color: color ?? AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildLabeledText(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: AppFonts.size15,
            fontWeight: AppFonts.semiBold,
            color: AppColors.accentLavender,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          value,
          style: const TextStyle(
            fontSize: AppFonts.size16,
            fontWeight: AppFonts.medium,
            color: AppColors.textPrimary,
            height: 1.5,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoLine(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: AppFonts.size14,
            fontWeight: AppFonts.semiBold,
            color: AppColors.accentLavender,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          value,
          style: const TextStyle(
            fontSize: AppFonts.size16,
            fontWeight: AppFonts.medium,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildAwards() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Icon(Icons.emoji_events_outlined, color: AppColors.primary),
            SizedBox(width: 8),
            Text(
              'Awards',
              style: TextStyle(
                fontSize: AppFonts.size20,
                fontWeight: AppFonts.bold,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ..._awards.map(
          (award) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.star_border,
                  color: AppColors.secondary,
                  size: 22,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    award,
                    style: const TextStyle(
                      fontSize: AppFonts.size15,
                      fontWeight: AppFonts.medium,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ControlCircle extends StatelessWidget {
  const _ControlCircle({required this.icon, this.background, this.iconColor});

  final IconData icon;
  final Color? background;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: background ?? Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Icon(icon, size: 22, color: iconColor ?? AppColors.textPrimary),
    );
  }
}

class _SectionData {
  const _SectionData({
    required this.image,
    required this.label,
    required this.taskTitle,
    required this.startDate,
    required this.endDate,
    required this.assignee,
  });

  final String image;
  final String label;
  final String taskTitle;
  final String startDate;
  final String endDate;
  final String assignee;
}
