import 'package:flutter_test/flutter_test.dart';

import 'package:my_app/province.dart';
void main() {

group('text class', () { 
      var province=Province(
      id: '01',
      name: 'Thành phố Hà Nội',
      level: 'Thành phố Trung Ương',
    );
  group('Text Province:', () {
    test('contructor Province', (){
  expect(province.id, equals('01'));
  expect(province.name, equals('Thành phố Hà Nội'));
  expect(province.level, equals('Thành phố Trung Ương'));
  });
});

    var district=District(
      id: '01',
      name: 'Quận Ba Đình',
      level: 'Quận',
      provinceId: '01',
    );
  group('Text District:', () {
    test('contructor District', (){
  expect(district.id, equals('01'));
  expect(district.name, equals('Quận Ba Đình'));
  expect(district.level, equals('Quận'));
  expect(district.provinceId, equals('01'));
  });
});

    var ward=Ward(
      id: '01',
      name: 'Phường Phúc Xã',
      level: 'Phường',
      provinceId: '01',
      districtId: '01'
    );
  group('Text Warp:', () {
    test('contructor Ward', (){
  expect(ward.id, equals('01'));
  expect(ward.name, equals('Phường Phúc Xã'));
  expect(ward.level, equals('Phường'));
  expect(ward.provinceId, equals('01'));
  expect(ward.districtId, equals('01'));
  });
});


    var address=AddressInfo(
      province: province,
      district: district,
      ward: ward,
      street: 'Đường Yên Phụ',
    );
  group('Text AddressInfo:', () {
    test('contructor AddressInfo', (){
  expect(address.province, equals(province));
  expect(address.district, equals(district));
  expect(address.ward, equals(ward));
  expect(address.street, equals('Đường Yên Phụ'));
  });
});

  group('Text UserInfo:', () {
    test('contructor UserInfo', (){
    var userInfo=UserInfo(
      name: 'Nguyễn Tuấn Đạt',
      email: 'tuandat@gmail.com',
      phoneNumber: '01230312394',
      birthDate: DateTime(2003,12,31),
      address: address,
    );
  expect(userInfo.name, equals('Nguyễn Tuấn Đạt'));
  expect(userInfo.email, equals('tuandat@gmail.com'));
  expect(userInfo.phoneNumber, equals('01230312394'));
  expect(userInfo.birthDate, equals(DateTime(2003,12,31)));
  expect(userInfo.address, equals(address));
  });
});
});
}
