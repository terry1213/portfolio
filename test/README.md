# Portfolio Testing Guide

이 문서는 포트폴리오 프로젝트의 테스트 실행 방법을 설명합니다.

## 📋 테스트 구조

```
test/
├── helpers/
│   ├── test_helpers.dart         # Mock 생성 및 유틸리티
│   └── mock_data.dart            # 테스트용 데이터
├── ui/
│   ├── component/
│   │   └── nav_button_test.dart  # Widget 테스트
│   └── view/
│       └── blog_view/
│           └── blog_view_model_test.dart  # ViewModel 테스트
└── feature/
    └── blog_post/
        └── data/
            └── repository/
                └── blog_post_repository_test.dart  # Repository 테스트
```

## 🚀 테스트 실행

### 모든 테스트 실행
```bash
fvm flutter test
```

### 특정 파일 테스트
```bash
fvm flutter test test/ui/view/blog_view/blog_view_model_test.dart
```

### Coverage 리포트 생성
```bash
# Coverage 데이터 생성
fvm flutter test --coverage

# HTML 리포트 생성 (lcov 필요)
genhtml coverage/lcov.info -o coverage/html

# 브라우저에서 열기
open coverage/html/index.html  # macOS
```

## 📝 테스트 유형

### 1. Unit Tests - ViewModel
**위치:** `test/ui/view/*/`

**테스트 내용:**
- ✅ 초기 상태 확인
- ✅ 성공 시 loaded 상태로 전환
- ✅ 실패 시 error 상태로 전환
- ✅ retry() 동작 확인

**예시:**
```dart
test('should emit loaded state when data fetch succeeds', () async {
  // Arrange
  when(mockUseCase.execute(any))
      .thenAnswer((_) async => Result.success(MockData.blogPosts));

  // Act
  viewModel = BlogViewModel();
  await Future.delayed(const Duration(milliseconds: 100));

  // Assert
  expect(viewModel.state, isA<BlogViewStateLoaded>());
});
```

### 2. Unit Tests - Repository
**위치:** `test/feature/*/data/repository/`

**테스트 내용:**
- ✅ 성공 시 Result.success 반환
- ✅ NetworkException → NetworkFailure 변환
- ✅ JsonParsingException → ParsingFailure 변환
- ✅ TimeoutException → TimeoutFailure 변환

**예시:**
```dart
test('should return network failure when NetworkException is thrown', () async {
  // Arrange
  when(mockDataSource.readAllBlogPosts())
      .thenThrow(const NetworkException('Network error'));

  // Act
  final result = await repository.readAllBlogPosts();

  // Assert
  result.when(
    success: (_) => fail('Expected failure'),
    failure: (failure) {
      expect(failure, isA<NetworkFailure>());
    },
  );
});
```

### 3. Widget Tests
**위치:** `test/ui/component/`

**테스트 내용:**
- ✅ Widget이 올바르게 렌더링되는지
- ✅ 사용자 입력에 올바르게 반응하는지
- ✅ 상태 변화에 따라 UI가 업데이트되는지

**예시:**
```dart
testWidgets('should display label text', (WidgetTester tester) async {
  await tester.pumpWidget(
    MaterialApp(
      home: NavButton(label: 'Home', route: Routes.home),
    ),
  );

  expect(find.text('Home'), findsOneWidget);
});
```

## 🛠️ Mock 생성

Mock 파일은 build_runner를 통해 자동 생성됩니다:

```bash
fvm flutter pub run build_runner build --delete-conflicting-outputs
```

생성되는 파일:
- `test/helpers/test_helpers.mocks.dart`
- `test/feature/*/repository/*_test.mocks.dart`

## 📊 테스트 커버리지 목표

- ✅ ViewModel: 80%+
- ✅ Repository: 80%+
- ✅ UseCase: 80%+
- ⚪ Widget: 50%+

## 🔧 트러블슈팅

### Mock 생성 오류
```bash
# 기존 mock 파일 삭제 후 재생성
rm -rf **/*.mocks.dart
fvm flutter pub run build_runner build --delete-conflicting-outputs
```

### 테스트 실패 디버깅
```bash
# 자세한 로그와 함께 실행
fvm flutter test --verbose
```

### DI 관련 테스트 오류
테스트에서 `getIt`을 사용하는 경우, setUp에서 초기화:
```dart
setUp(() {
  // Reset GetIt
  if (getIt.isRegistered<SomeService>()) {
    getIt.unregister<SomeService>();
  }
  getIt.registerSingleton<SomeService>(MockSomeService());
});
```

## 📚 추가 참고자료

- [Flutter Testing Documentation](https://docs.flutter.dev/testing)
- [Mockito Documentation](https://pub.dev/packages/mockito)
- [flutter_test Package](https://api.flutter.dev/flutter/flutter_test/flutter_test-library.html)
