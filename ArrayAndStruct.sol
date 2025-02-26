// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract ArrayTypes{
    uint[8] array1;
    bytes1[5] array2;
    address[100] arrat3;

    uint[] array4;
    bytes1[] array5;
    address[] array6;
    bytes array7;


    uint[] array8 = new uint[](5);
    bytes array9 = new bytes(9);

    function initArray() external pure returns(uint[]memory){
        uint[] memory x = new uint[](3);
        x[0] = 1;
        x[1] = 2;
        x[2] = 4;
        return(x);
    }

    function arrayPush() public  returns (uint[] memory) {
        uint[2] memory a = [uint(1),2];
        array4 = a;
        array4.push(99);
        return array4;
    }


}





pragma solidity ^0.8.21 ;

contract StructTypes{
    struct Student{
        uint256 id;
        uint256 score;
    }

    Student student;  //初始化结构体
//1
    function initStudent1() external {
        Student storage _student = student;
        _student.id = 11;
        _student.score = 100;
    }
//2
    function initStudent2() external {
        student.id = 11;
        student.score = 80;
    }
//3
    function initStudent3() external {
        student = Student(3, 90);
    }
//4
    function initStudent4() external {
        student = Student({id :4, score: 60});
    }

    function getStudent() external view returns (uint256, uint256) {
        return (student.id, student.score);
    }

}