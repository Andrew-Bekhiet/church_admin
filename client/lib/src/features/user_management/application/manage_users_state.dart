import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class ManageUsersState with Equatable {
  final List<User> users;
  final bool isLoading;
  final bool hasMore;
  final String searchQuery;
  final ManageUsersView preferredView;
  final Object? error;

  ManageUsersView get view =>
      searchQuery.isEmpty ? preferredView : ManageUsersView.flat;

  List<UserAdminGroup> get groups => UserAdminGroup.groupUsers(users);

  @override
  List<Object?> get props => [
    users,
    isLoading,
    hasMore,
    searchQuery,
    preferredView,
    error,
  ];

  const ManageUsersState({
    this.users = const [],
    this.isLoading = true,
    this.hasMore = false,
    this.searchQuery = '',
    this.preferredView = ManageUsersView.grouped,
    this.error,
  });

  ManageUsersState copyWith({
    List<User>? users,
    bool? isLoading,
    bool? hasMore,
    String? searchQuery,
    ManageUsersView? preferredView,
    Object? error,
  }) => ManageUsersState(
    users: users ?? this.users,
    isLoading: isLoading ?? this.isLoading,
    hasMore: hasMore ?? this.hasMore,
    searchQuery: searchQuery ?? this.searchQuery,
    preferredView: preferredView ?? this.preferredView,
    error: error,
  );
}
