import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../model/tour_model.dart';
import '../../../repositories/tour_repository.dart';
import '../widgets/tour_list_card.dart';
import '../widgets/tour_list_widget.dart';

class TourListPage extends StatefulWidget {
  const TourListPage({super.key});

  @override
  State<TourListPage> createState() => _TourListScreenState();
}

class _TourListScreenState extends State<TourListPage> {
  void _navigateToTourDetail(BuildContext context, String tourId) {
    context.push('/tour-detail/$tourId');
  }

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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: AppColors.surface,
      builder: (context) {
        return ListView(
          children: _priceOptions.map((price) {
            return ListTile(
              title: Text(
                price,
                style: const TextStyle(color: AppColors.textPrimary),
              ),
              trailing: _priceRangeLabel() == price
                  ? const Icon(Icons.check, color: AppColors.primary)
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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: AppColors.surface,
      builder: (context) {
        return ListView(
          children: _locations.map((location) {
            return ListTile(
              title: Text(
                location,
                style: const TextStyle(color: AppColors.textPrimary),
              ),
              trailing: _selectedLocation == location
                  ? const Icon(Icons.check, color: AppColors.primary)
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

  // !mock data
  List<Tour> get _filteredTours {
    return _allTours.where((tour) {
      if (_selectedLocation != null &&
          !tour.destination.contains(_selectedLocation!))
        return false;

      if (_selectedDate != null &&
          (tour.departureDate.year != _selectedDate!.year ||
              tour.departureDate.month != _selectedDate!.month ||
              tour.departureDate.day != _selectedDate!.day))
        return false;

      if (tour.price < _priceRange.start || tour.price > _priceRange.end)
        return false;

      if (_searchController.text.isNotEmpty &&
          !tour.title.toLowerCase().contains(
            _searchController.text.toLowerCase(),
          ))
        return false;

      return true;
    }).toList()..sort((a, b) {
      if (_sortOrder == "Thấp đến cao") return a.price.compareTo(b.price);
      return b.price.compareTo(a.price);
    });
  }

  Future<void> _selectDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2027),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: AppColors.primary, 
            onPrimary: AppColors.buttonPrimaryText,
            onSurface: AppColors.textPrimary,
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: AppColors.primary),
          ),
        ),
        child: child!,
      ),
    );
    if (picked != null) setState(() => _selectedDate = picked);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: AppColors.textPrimary,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        titleSpacing: 0,
        title: Container(
          height: 40,
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: AppColors.inputBackground,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              hintText: 'Tìm kiếm tour...',
              hintStyle: TextStyle(color: AppColors.textHint, fontSize: 14),
              prefixIcon: Icon(Icons.search, color: AppColors.icon, size: 20),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onChanged: (value) => setState(() {}),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: AppColors.icon),
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
            count: _filteredTours.length,
            sortOrder: _sortOrder,
            onSortSelected: (value) => setState(() => _sortOrder = value),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _filteredTours.length,
              itemBuilder: (context, index) {
                final tour = _filteredTours[index];
                return TourListCard(
                  tour: tour,
                  onPressed: () => _navigateToTourDetail(context, tour.id),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
