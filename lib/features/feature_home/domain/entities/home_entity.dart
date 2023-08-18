import 'package:equatable/equatable.dart';

import '../../data/models/home_model.dart';

class HomeEntity extends Equatable{
final  ResponseData? responseData;


  HomeEntity( {this.responseData});

  @override
  // TODO: implement props
  List<Object?> get props => [responseData];

}