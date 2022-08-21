
class Temp{

  double CToF(int temp){
    return ((temp * 9/5) + 32);
  }

  double CToK(int temp){
    return (temp + 273.15);
  }

  double FToC(int temp){
    return ((temp - 32) * 5/9);
  }

  double FToK(int temp){
    return ((temp + 459.67) * 5/9);
  }

  double KToC(int temp){
    return (temp - 273.15);
  }

  double KToF(int temp){
    return ((temp * 9/5) - 459.67);
  }

}