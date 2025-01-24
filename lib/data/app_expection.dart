// ignore_for_file: prefer_typing_uninitialized_variables

class AppExpection implements Exception{

final _message;
final _prifix;

AppExpection(
  this._message,this._prifix
);

  @override
  String toString(){
  return '$_prifix$_message';
}

}
class FetchDataExpection extends AppExpection{
  FetchDataExpection([String?message]):super(message,"Error during communitcation");
}
class BadRequestExpection extends AppExpection{
  BadRequestExpection([String?message]):super(message,'Invalid Request ');
}
class UnAuthorisedExpection extends AppExpection{
  UnAuthorisedExpection([String?message]):super(message,"UnAuthorised Request ");
}
class InvalidInputExpection extends AppExpection{
  InvalidInputExpection([String?message]):super(message,"InvalidInput Request");
}