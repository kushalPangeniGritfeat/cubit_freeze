import 'package:bloc/bloc.dart';
import 'package:cubit_freeze/features/form/cubit/form_state.dart';
import 'package:cubit_freeze/features/form/model/email_password.dart';

class FormCubit extends Cubit<FormState>{
  FormCubit():super(const FormState.initial());

  

  void sendDetails()async{
    emit(const FormState.initial());
    await Future.delayed(const Duration(seconds: 5));
    emit(const FormState.valid());
  }

 bool validateTextField(EmailPassword emailPassword){
    emailPassword.toJson();
    return false;
 }
}