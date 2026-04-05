import 'package:flutter/material.dart';
import '../widgets/tour_card.dart';
import '../widgets/tour_list_widgets.dart';
import '../../model/tour_model.dart';
import '../../repositories/tour_repository.dart';
import '../../../core/themes/app_theme.dart';
import 'tour_detail_page.dart';

class TourListScreen extends StatefulWidget {
  const TourListScreen({super.key});

  @override
  State<TourListScreen> createState() => _TourListScreenState();
}

class _TourListScreenState extends State<TourListScreen> {
  final List<Tour> _allTours = TourRepository().getMockTours();
  final TextEditingController _searchController = TextEditingController();

  DateTime? _selectedDate;
  String _sortOrder = "Thấp đến cao";
  RangeValues _priceRange = const RangeValues(0, 5000000);
  String? _selectedLocation;

  final List<String> _locations = [
    'Đà Lạt',
    'Phú Quốc',
    'Nha Trang',
    'Sapa',
    'Vịnh Hạ Long',
    'Đà Nẵng',
    'Huế',
    'Cần Thơ',
  ];

  final List<String> _priceOptions = [
    '3 - 5 triệu',
    '5 - 7 triệu',
    '7 - 10 triệu',
  ];

  String _priceRangeLabel() {
    if (_priceRange.start == 3000000 && _priceRange.end == 5000000)
      return '3 - 5 triệu';
    if (_priceRange.start == 5000000 && _priceRange.end == 7000000)
      return '5 - 7 triệu';
    if (_priceRange.start == 7000000 && _priceRange.end == 10000000)
      return '7 - 10 triệu';
    return '';
  }

  void _showPriceFilter() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView(
          children: _priceOptions.map((price) {
            return ListTile(
              title: Text(price),
              trailing: _priceRangeLabel() == price
                  ? const Icon(Icons.check)
                  : null,
              onTap: () {
                setState(() {
                  if (price == '3 - 5 triệu')
                    _priceRange = const RangeValues(3000000, 5000000);
                  if (price == '5 - 7 triệu')
                    _priceRange = const RangeValues(5000000, 7000000);
                  if (price == '7 - 10 triệu')
                    _priceRange = const RangeValues(7000000, 10000000);
                });
                Navigator.pop(context);
              },
            );
          }).toList(),
        );
      },
    );
  }

  void _showLocationFilter() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView(
          children: _locations.map((location) {
            return ListTile(
              title: Text(location),
              trailing: _selectedLocation == location
                  ? const Icon(Icons.check)
                  : null,
              onTap: () {
                setState(() => _selectedLocation = location);
                Navigator.pop(context);
              },
            );
          }).toList(),
        );
      },
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _selectDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2027),
    );
    if (picked != null) setState(() => _selectedDate = picked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.neutralWhite,
      appBar: AppBar(
        backgroundColor: AppTheme.neutralWhite,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: AppTheme.neutralDark,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        titleSpacing: 0,
        title: Container(
          height: 40,
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: AppTheme.neutralGrey1,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              hintText: 'Tìm kiếm tour...',
              hintStyle: TextStyle(color: AppTheme.neutralGrey2, fontSize: 14),
              prefixIcon: Icon(
                Icons.search,
                color: AppTheme.neutralGrey2,
                size: 20,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: AppTheme.neutralGrey2,
            ),
            onPressed: () => print("Notification tap"),
          ),
        ],
      ),
      body: Column(
        children: [
          TourListWidgets.buildFilterBar(
            children: [
              TourListWidgets.filterChip(
                label: _selectedDate == null
                    ? 'Ngày đi'
                    : '${_selectedDate!.day}/${_selectedDate!.month}',
                isSelected: _selectedDate != null,
                onTap: _selectDate,
              ),
              TourListWidgets.filterChip(
                label: _priceRangeLabel().isEmpty ? 'Giá' : _priceRangeLabel(),
                isSelected: _priceRangeLabel().isNotEmpty,
                onTap: _showPriceFilter,
              ),
              TourListWidgets.filterChip(
                label: _selectedLocation ?? 'Điểm đến',
                isSelected: _selectedLocation != null,
                onTap: _showLocationFilter,
              ),
            ],
          ),
          TourListWidgets.buildResultsSection(
            context: context,
            count: _allTours.length,
            sortOrder: _sortOrder,
            onSortSelected: (value) => setState(() => _sortOrder = value),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _allTours.length,
              itemBuilder: (context, index) {
                return TourCard(
                  tour: _allTours[index],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            TourDetailScreen(tourId: _allTours[index].id),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
