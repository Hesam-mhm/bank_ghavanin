

import '../../data/model/roster_model.dart';

import 'package:equatable/equatable.dart';

class RosterEntity extends Equatable{
   final ResponseData? responseData;

  RosterEntity({this.responseData});
  
  @override
  List<Object?> get props => [];

}