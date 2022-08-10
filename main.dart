import 'dart:io';
import 'dart:math';
void main()
{
    print("Enter the number of rows in matrix : ");         
    int? rows = int.parse(stdin.readLineSync()!);           //input an integer value for rows 
    print("Enter the number of columns in matix : ");
    int? cols = int.parse(stdin.readLineSync()!);           //input an integer value for columns
    List<List<int>> matrix = List.generate(rows, (_) => List.generate(cols, (_) => 0));         //matrix declaration
    int k=1;                                                 
    for(int i = 0 ; i<= (2*cols-1); i++)                    //for loop 
    {
        for(int j =max(0,i-rows+1);j<(min(i,cols-1)+1);j++)
        {
            matrix[i-j][j]=k;                               //assign values in matrix
            k+=1;
        }
    }
    stdout.write(matrix);                                   //resultant matrix
 }