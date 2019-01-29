public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String fWord = onlyLetters(word);
  fWord.toLowerCase();
  if(reverse(fWord.toLowerCase()).equals(fWord.toLowerCase())){
    return true;
  }else{
    return false;
  }
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i = str.length()-1; i >= 0; i--){
    sNew = sNew + str.substring(i, i+1);
    }
    return sNew;
}
public String onlyLetters(String sString){
  String oL = "";
  for(int i = 0 ; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      oL = oL + sString.charAt(i);
    }
  }
  return oL;
}
