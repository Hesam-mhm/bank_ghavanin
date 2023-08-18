
import 'package:equatable/equatable.dart';

import '../../data/models/otp_model.dart';

class OtpEntity extends Equatable{
final  ResponseData? responseData ;
  OtpEntity({ this.responseData});

  @override
  List<Object?> get props =>[responseData];

}