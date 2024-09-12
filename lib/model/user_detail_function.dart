

class UserInformation{
  // User details
  String userName ;
  int  userId;
  double mainBalance;
  UserInformation(this.userName, this.userId, this.mainBalance);

//question 1: mainBalance theke value besi hole error ase

//deposit
  deposit(double amount){
 if (amount>0){
   mainBalance +=amount;
   return mainBalance;
  // print("new balance : $mainBalance");
 }else if(amount<0){
   print("Please enter positive value");
 }else {
   print("something wrong");
 }
}
//withdraw
 withdraw(double amount){
    if (amount<=mainBalance && amount >0 ){
      mainBalance -=amount;

      return mainBalance;
    }else if (amount > mainBalance || amount <0) {
      print("Please enter positive value");
    }else {
      print("something wrong");
    }
  }
 displayHolder(){
  print("Account Holder : $userName");
 print("Account Id : $userId");
  print("Main Balance : $mainBalance");

  }


}